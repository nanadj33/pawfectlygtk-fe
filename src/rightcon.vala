namespace Pawfectly {
    
    public class Rightcon{
        public Gtk.Box rightcon;
        public Gtk.Box leftpict;
        public Gtk.Button signin;
        public Gtk.Button signup;
        public Gtk.Button login;
        public Gtk.Entry uname;
        public Gtk.Entry pass;
        private Gtk.Box container;
        public Gtk.Box mypet;

        public void clickedup(Gtk.Box container){
            container.remove(rightcon);
            var rightconup = new Pawfectly.Rightconup(container);
            container.append(rightconup.rightconup);
        }

        public void clicked(){
            print("wait");
        }
        
        public Rightcon(Gtk.Box container){
            this.container = container;
            var tempBox = new RightconUi();
            rightcon = tempBox;
            signin = tempBox.signin; 
            signup = tempBox.signup;
            login = tempBox.login;
            uname = tempBox.uname; 
            pass = tempBox.pass;

            signup.clicked.connect(() => clickedup(container));
            login.clicked.connect(clicked);
        }
        
    }

    [GtkTemplate (ui = "/org/example/App/rightcon.ui")]
    public class RightconUi : Gtk.Box {
        [GtkChild]
        public unowned Gtk.Button signin;
        [GtkChild]
        public unowned Gtk.Button signup;
        [GtkChild]
        public unowned Gtk.Button login;
        [GtkChild]
        public unowned Gtk.Entry uname;
        [GtkChild]
        public unowned Gtk.Entry pass;
    }
}