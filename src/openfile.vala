public void openFileDialog() {
    message("Pick File");
    Gtk.FileChooserDialog file_chooser = new Gtk.FileChooserDialog("Upload Data", this, Gtk.FileChooserAction.OPEN, "_Cancel", Gtk.ResponseType.CANCEL, "_Open", Gtk.ResponseType.ACCEPT);
    file_chooser.present();
    file_chooser.response.connect((dialog, response) => {
        if (response == Gtk.ResponseType.ACCEPT) {
            File selected = file_chooser.get_file();
            readPetFile(selected);
            file_chooser.destroy();
        }
        if (response == Gtk.ResponseType.CANCEL) {
            file_chooser.destroy();
        }
    });
}

public void readPetFile(File file) {
    string file_content = "";

    try {
        FileIOChannel file_channel = file.read();
        file_channel.read_line(out file_content, null);
        file_channel.close();
    } catch (IOError e) {
        warning("Error reading file: %s", e.message);
        return;
    }

    string[] lines = file_content.split("\n");

    foreach (string line in lines) {

        string[] pet_data = line.split("-");
        if (pet_data.length == 3) {
            Database.mypet = file;
        }
    }
}
