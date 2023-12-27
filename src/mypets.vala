namespace Pawfectly {
    
    public class Mypet{
        public Gtk.Box mypet;
        public Gtk.Button addpet_button;
        public Gtk.Button editpet_homebutton;
        public Gtk.Label mypetsnameinfo;
        public Gtk.Label mypetswhatinfo;
        public Gtk.Label mypetsbreedinfo;
        
        public void clicked(){
            print("jalan");
        }
        
        public Mypet(){
            var tempBox = new MypetUI();
            mypet = tempBox;
            addpet_button = tempBox.addpet_button; 
            addpet_button.clicked.connect(clicked);
            editpet_homebutton = tempBox.editpet_homebutton; 
            editpet_homebutton.clicked.connect(clicked);
            mypetsnameinfo = tempBox.mypetsnameinfo;
            mypetswhatinfo = tempBox.mypetswhatinfo;
            mypetsbreedinfo = tempBox.mypetsbreedinfo;
        }
        
    }

    [GtkTemplate (ui = "/org/example/App/mypets.ui")]
    public class MypetUI : Gtk.Box {
        [GtkChild]
        public unowned Gtk.Button addpet_button;
        [GtkChild]
        public unowned Gtk.Button editpet_homebutton;
        [GtkChild]
        public unowned Gtk.Label mypetsnameinfo;
        [GtkChild]
        public unowned Gtk.Label mypetswhatinfo;
        [GtkChild]
        public unowned Gtk.Label mypetsbreedinfo;
    }
}
