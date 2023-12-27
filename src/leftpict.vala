namespace Pawfectly {
    
    public class Leftpict{
        public Gtk.Box leftpict;
        
        public Leftpict(){
            var tempBox = new LeftpictUi();
            leftpict = tempBox;
        }
        
    }

    [GtkTemplate (ui = "/org/example/App/leftpict.ui")]
    public class LeftpictUi : Gtk.Box {
        [GtkChild]
        public unowned Gtk.Box leftpict;
    }
}