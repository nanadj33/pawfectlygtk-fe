/* window.vala
 *
 * Copyright 2023 Nana
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

            var header = new Pawfectly.Header();
            var content = new Pawfectly.Content();
            
            body.append(header.head);
            body.append(content.content);
        }
    }
}
