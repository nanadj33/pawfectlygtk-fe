namespace Pawfectly {
    
    public class Addpetbox{
        public Gtk.Box addpet;
        Gtk.Entry petname_entry;
        Gtk.Entry whatpet_entry;
        Gtk.Entry breed_entry;
        Gtk.Button addpet_button;
        public void clicked(){
            print("jalan");
        }

        
        public Addpetbox(){
            var tempBox = new AddpetboxUI();
            addpet = tempBox;
            petname_entry = tempBox.petname_entry; 
            whatpet_entry = tempBox.whatpet_entry; 
            breed_entry = tempBox.breed_entry; 
            addpet_button = tempBox.addpet_button;

            addpet_button.clicked.connect(clicked);
        }
        
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
}
