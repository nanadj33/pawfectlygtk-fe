namespace Pawfectly {
    
    public class Content{
        public Gtk.Box content;
        public Gtk.Entry uname;
        public Gtk.Entry pass;
        
        public Content(){
            var tempBox = new ContentUi();
            content = tempBox;
            uname = tempBox.uname; 
            pass = tempBox.pass; 
        }
        
    }

    [GtkTemplate (ui = "/org/example/App/content.ui")]
    public class ContentUi : Gtk.Box {
        [GtkChild]
        public unowned Gtk.Entry uname;
        [GtkChild]
        public unowned Gtk.Entry pass;
    }
}