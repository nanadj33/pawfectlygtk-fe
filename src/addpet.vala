namespace Pawfectly {
    
    public class Addpetbox{
        public Gtk.Box addpet;
        
        public Addpetbox(){
            var tempBox = new AddpetboxUI();
            addpet = tempBox;
            
        }
        
    }

    [GtkTemplate (ui = "/org/example/App/addpet.ui")]
    public class AddpetboxUI: Gtk.Box {
        
    }
}
