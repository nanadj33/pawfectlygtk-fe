/* window.vala
 *
 * Copyright 2023 smthlikeyou
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

 namespace Teslogin {
    [GtkTemplate (ui = "/org/example/App/window.ui")]
    public class Window : Gtk.ApplicationWindow {
    [GtkChild]
    private unowned Gtk.Box box1;
    [GtkChild]
    private unowned Gtk.Image image1;
    [GtkChild]
    private unowned Gtk.Image image2;
    [GtkChild]
    private unowned Gtk.Image image3;
    [GtkChild]
    private unowned Gtk.Image imagespaw;
        public Window (Gtk.Application app) {
            Object (application: app);

            Gtk.CssProvider css_provider = new Gtk.CssProvider ();
            css_provider.load_from_resource("/org/example/App/styles.css");

            Gtk.StyleContext.add_provider_for_display (Gdk.Display.get_default (), css_provider, Gtk.STYLE_PROVIDER_PRIORITY_USER);
            image1.set_from_resource("/org/example/App/assets/Corgi.png");
            image2.set_from_resource("/org/example/App/assets/Molly.png");
            image3.set_from_resource("/org/example/App/assets/Mushroom.png");
            imagespaw.set_from_resource("/org/example/App/assets/Homepic.png");



        }



        private void getcss() {
            Gtk.CssProvider css_provider= new Gtk.CssProvider();

            try {
                css_provider.load_from_path("/org/example/App/style.css");
            } catch (Error e) {
                stderr.printf("cant load : %s", e.message);
            }

            Gtk.StyleContext.add_provider_for_display(Gdk.Display.get_default(), css_provider, Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION);
        }
    }
}