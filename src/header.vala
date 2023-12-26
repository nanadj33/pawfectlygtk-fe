namespace Pawfectly {
    
    public class Header{
        public Gtk.Box head;
        public Gtk.Button signin;
        public Gtk.Button signup;
        public void clicked(){
            print("jalan");
        }
        
        public Header(){
            var tempBox = new HeaderUi();
            head = tempBox;
            signin = tempBox.signin; 
            signup = tempBox.signup; 
            signin.clicked.connect(clicked);
            signup.clicked.connect(clicked);
        }
        
    }

    [GtkTemplate (ui = "/org/example/App/header.ui")]
    public class HeaderUi : Gtk.Box {
        [GtkChild]
        public unowned Gtk.Button signin;
        [GtkChild]
        public unowned Gtk.Button signup;
    }
}