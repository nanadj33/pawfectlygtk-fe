using GLib;

namespace Pawfectly {

    public class Addpetbox{
        public Gtk.Box addpet;
        public Gtk.Box mypet;
        Gtk.Entry petname_entry;
        Gtk.Entry whatpet_entry;
        Gtk.Entry breed_entry;
        Gtk.Button addpet_button;
        private Gtk.Box body;
        public Gtk.Box mypets;
        
        public Addpetbox(Gtk.Box body){
            this.body = body;
            var tempBox = new AddpetboxUI();
            addpet = tempBox;
            petname_entry = tempBox.petname_entry; 
            whatpet_entry = tempBox.whatpet_entry; 
            breed_entry = tempBox.breed_entry; 
            addpet_button = tempBox.addpet_button;
<<<<<<< HEAD
            
            addpet_button.clicked.connect(() => {
                
                var input = File.new_for_path("/home/nana/mavala/pawfectlygtk/src/petdata.txt");
                var connect = input.append_to(FileCreateFlags.NONE);
                var all = petname_entry.text + "\n";
                all += whatpet_entry.text + "\n";
                all += breed_entry.text + "\n\n";
                connect.write(all.data);
                connect.close();
                body.remove(addpet);
                var mypet = new Pawfectly.Mypet(body);
                body.append(mypet.mypet);
            });
        }

=======

            addpet_button.clicked.connect(clicked);
        }
        
>>>>>>> origin/main
    }

    [GtkTemplate (ui = "/org/example/App/addpet.ui")]
    public class AddpetboxUI: Gtk.Box {
        [GtkChild]
        public unowned Gtk.Entry petname_entry;
        [GtkChild]
        public unowned Gtk.Entry whatpet_entry;
        [GtkChild]
        public unowned Gtk.Entry breed_entry;
        [GtkChild]
        public unowned Gtk.Button addpet_button;
    }
<<<<<<< HEAD
}
=======
}
>>>>>>> origin/main
