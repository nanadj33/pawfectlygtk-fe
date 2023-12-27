public void openFileDialog(){
    message ("Pick File");
    Gtk.FileChooserDialog file_chooser = new Gtk.FileChooserDialog("Upload Data", this, Gtk.FileChooserAction.OPEN, "_Cancel", Gtk.ResponseType.CANCEL, "_Open", Gtk.ResponseType.ACCEPT);
    file_chooser.present ();
    file_chooser.response.connect((dialog, response)=>{
        if(response == Gtk.ResponseType.ACCEPT){
            File selected = file_chooser.get_file();
            file_chooser.destroy();
        }
        if(response == Gtk.ResponseType.CANCEL){
            file_chooser.destroy();
        }
        
    });
}
