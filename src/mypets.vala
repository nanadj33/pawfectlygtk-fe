namespace Pawfectly {
    
    public class Mypet{
        public Gtk.Box mypet;
        public Gtk.Button mypet_button;
        public Gtk.Button addpet_button;
        
        public void clicked(){
            print("jalan");
        }
        
        public Mypet(){
            var tempBox = new MypetUI();
            mypet = tempBox;
            mypet_button = tempBox.mypet_button; 
            mypet_button.clicked.connect(clicked);
            addpet_button = tempBox.addpet_button; 
            addpet_button.clicked.connect(clicked);
        }
        
    }

    [GtkTemplate (ui = "/org/example/App/mypets.ui")]
    public class MypetUI : Gtk.Box {
        [GtkChild]
        public unowned Gtk.Button mypet_button;
        [GtkChild]
        public unowned Gtk.Button addpet_button;
    }
}
