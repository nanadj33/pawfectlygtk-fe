namespace Pawfectly {
    
    public class Mypet{
        public Gtk.Box mypet;
        public Gtk.Button addpet_button;
        public Gtk.Button editpet_homebutton;
        public Gtk.Label mypetsnameinfo;
        public Gtk.Label mypetswhatinfo;
        public Gtk.Label mypetsbreedinfo;
        private Gtk.Box body;
        
        public void clickedadd(Gtk.Box body){
            body.remove(mypet);
            var addpetbox = new Pawfectly.Addpetbox(body);
            body.append(addpetbox.addpet);
        }

        public void clicked(Gtk.Box body){
            body.remove(mypet);
            var editpetbox = new Pawfectly.Editmypetbox(body);
            body.append(editpetbox.editpet);
        }
        
        public Mypet(Gtk.Box body){
            this.body = body;
            var tempBox = new MypetUI();
            mypet = tempBox;
            addpet_button = tempBox.addpet_button; 
            addpet_button.clicked.connect(() => clickedadd(body));

            editpet_homebutton = tempBox.editpet_homebutton; 
            editpet_homebutton.clicked.connect(() => clicked(body));

            mypetsnameinfo = tempBox.mypetsnameinfo;
            mypetswhatinfo = tempBox.mypetswhatinfo;
            mypetsbreedinfo = tempBox.mypetsbreedinfo;

            //  addpet_button.clicked.connect(() => {
                
            //      var data = new Addpetbox()
            //  });

            var input = File.new_for_path("/home/nana/mavala/pawfectlygtk/src/petdata.txt");
            var connect = input.read();
            var scanner = new DataInputStream(connect);
            string content = "";

            while (true)
            {
                string? line = scanner.read_line(null);
                if (line==null)
                {
                    break;
                }
                content += line + "\n";
            }

            var label = new Gtk.Label(content);
            mypet.append(label);
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
