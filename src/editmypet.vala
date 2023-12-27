namespace Pawfectly {
    
    public class Editmypetbox{
        public Gtk.Box editpet;
        public Gtk.Box mypet;
        Gtk.Entry petname_entry;
        Gtk.Entry whatpet_entry;
        Gtk.Entry breed_entry;
        Gtk.Button editpet_button;
        private Gtk.Box body;

        public void clicked(Gtk.Box body){
            body.remove(editpet);
            var mypet = new Pawfectly.Mypet(body);
            body.append(mypet.mypet);
        }
        
        public Editmypetbox(Gtk.Box body){
            this.body = body;
            var tempBox = new EditmypetboxUI();
            editpet = tempBox;
            petname_entry = tempBox.petname_entry; 
            whatpet_entry = tempBox.whatpet_entry; 
            breed_entry = tempBox.breed_entry; 
            editpet_button = tempBox.editpet_button;

            editpet_button.clicked.connect(() => clicked(body));

            petname_entry.set_text("mowgli");
            whatpet_entry.set_text("cat");
            breed_entry.set_text("s");
        }
        
    }

    [GtkTemplate (ui = "/org/example/App/editmypet.ui")]
    public class EditmypetboxUI: Gtk.Box {
        [GtkChild]
        public unowned Gtk.Entry petname_entry;
        [GtkChild]
        public unowned Gtk.Entry whatpet_entry;
        [GtkChild]
        public unowned Gtk.Entry breed_entry;
        [GtkChild]
        public unowned Gtk.Button editpet_button;
    }
}
