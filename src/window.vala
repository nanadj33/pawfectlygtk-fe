namespace Pawfectly {
    [GtkTemplate (ui = "/org/example/App/window.ui")]
    public class Window : Gtk.ApplicationWindow {
        [GtkChild]
        private unowned Gtk.Box body;

        public Window (Gtk.Application app) {
            Object (application: app);
        }

        construct {
            var css_style = new Gtk.CssProvider();
            css_style.load_from_resource("/org/example/App/styles.css");
            Gtk.StyleContext.add_provider_for_display(
                Gdk.Display.get_default(),
                css_style,
                Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
            );

<<<<<<< HEAD

            var mypet = new Pawfectly.Mypet(body);
            body.append(mypet.mypet);
            
            //  var editpetbox = new Pawfectly.Editmypetbox();
            //  body.append(editpetbox.editpet);
=======
            var mypet = new Pawfectly.Mypet();
            
            body.append(mypet.mypet);

            
>>>>>>> origin/main
        }
    }
}
