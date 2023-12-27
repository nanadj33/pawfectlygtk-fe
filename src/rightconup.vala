namespace Pawfectly {
    
    public class Rightconup{
        public Gtk.Box rightconup;
        public Gtk.Button signin;
        public Gtk.Button signup;
        public Gtk.Button regis;
        public Gtk.Entry email;
        public Gtk.Entry fullname;
        public Gtk.Entry phone;
        public Gtk.Entry uname;
        public Gtk.Entry pass;
        public Gtk.Entry conpass;
        private Gtk.Box container;

        public void clickedin(Gtk.Box container){
            container.remove(rightconup);
            var rightcon = new Pawfectly.Rightcon(container);
            container.append(rightcon.rightcon);
        }

        public void clicked(Gtk.Box container){
            container.remove(rightconup);
            var rightcon = new Pawfectly.Rightcon(container);
            container.append(rightcon.rightcon);
        }
        
        public Rightconup(Gtk.Box container){
            this.container = container;
            var tempBox = new RightconupUi();
            rightconup = tempBox;
            signin = tempBox.signin; 
            signup = tempBox.signup;
            regis = tempBox.regis;
            email = tempBox.email; 
            uname = tempBox.uname; 
            fullname = tempBox.fullname; 
            phone = tempBox.phone; 
            pass = tempBox.pass;
            conpass = tempBox.conpass;

            signin.clicked.connect(() => clickedin(container));
            regis.clicked.connect(() => clicked(container));
        }
        
    }

    [GtkTemplate (ui = "/org/example/App/rightconup.ui")]
    public class RightconupUi : Gtk.Box {
        [GtkChild]
        public unowned Gtk.Button signin;
        [GtkChild]
        public unowned Gtk.Button signup;
        [GtkChild]
        public unowned Gtk.Button regis;
        [GtkChild]
        public unowned Gtk.Entry email;
        [GtkChild]
        public unowned Gtk.Entry uname;
        [GtkChild]
        public unowned Gtk.Entry fullname;
        [GtkChild]
        public unowned Gtk.Entry phone;
        [GtkChild]
        public unowned Gtk.Entry pass;
        [GtkChild]
        public unowned Gtk.Entry conpass;
    }
}