/* libxfce4panel-1.0.vapi generated by vapigen-0.16, do not modify. */

namespace Xfce {
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public class ArrowButton : Gtk.ToggleButton, Atk.Implementor, Gtk.Buildable, Gtk.Activatable {
        [CCode (has_construct_function = false, type = "GtkWidget*")]
        public ArrowButton (Gtk.ArrowType arrow_type);
        public Gtk.ArrowType get_arrow_type ();
        public bool get_blinking ();
        public void set_arrow_type (Gtk.ArrowType arrow_type);
        public void set_blinking (bool blinking);
        public Gtk.ArrowType arrow_type { get; set; }
        public virtual signal void arrow_type_changed (Gtk.ArrowType type);
    }
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public class HVBox : Gtk.Box, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
        public Gtk.Orientation orientation;
        [CCode (cname = "xfce_hvbox_new", has_construct_function = false, type = "GtkWidget*")]
        public HVBox (Gtk.Orientation orientation, bool homogeneous, int spacing);
        [CCode (cname = "xfce_hvbox_get_orientation")]
        public Gtk.Orientation get_orientation ();
        [CCode (cname = "xfce_hvbox_set_orientation")]
        public void set_orientation (Gtk.Orientation orientation);
    }
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public class PanelImage : Gtk.Widget, Atk.Implementor, Gtk.Buildable {
        [CCode (has_construct_function = false, type = "GtkWidget*")]
        public PanelImage ();
        public void clear ();
        [CCode (has_construct_function = false, type = "GtkWidget*")]
        public PanelImage.from_pixbuf (Gdk.Pixbuf pixbuf);
        [CCode (has_construct_function = false, type = "GtkWidget*")]
        public PanelImage.from_source (string source);
        public int get_size ();
        public void set_from_pixbuf (Gdk.Pixbuf pixbuf);
        public void set_from_source (string source);
        public void set_size (int size);
        [NoAccessorMethod]
        public Gdk.Pixbuf pixbuf { owned get; set; }
        public int size { get; set; }
        [NoAccessorMethod]
        public string source { owned get; set; }
    }
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public class PanelPlugin : Gtk.EventBox, Atk.Implementor, Gtk.Buildable, Xfce.PanelPluginProvider {
        [CCode (has_construct_function = false)]
        protected PanelPlugin ();
        public void add_action_widget (Gtk.Widget widget);
        public Gtk.ArrowType arrow_type ();
        public void block_autohide (bool blocked);
        public void block_menu ();
        [NoWrapper]
        public virtual void @construct ();
        public void focus_widget (Gtk.Widget widget);
        public unowned string get_arguments ();
        public unowned string get_comment ();
        public unowned string get_display_name ();
        public bool get_expand ();
        public bool get_locked ();
        public Xfce.PanelPluginMode get_mode ();
        public uint get_nrows ();
        public Gtk.Orientation get_orientation ();
        public unowned string get_property_base ();
        [CCode (cname = "xfce_panel_plugin_xfconf_channel_new")]
        public Xfconf.Channel get_channel();
        public Xfce.ScreenPosition get_screen_position ();
        public bool get_shrink ();
        public int get_size ();
        public bool get_small ();
        public unowned string lookup_rc_file ();
        public void menu_insert_item (Gtk.MenuItem item);
        public void menu_show_about ();
        public void menu_show_configure ();
        public static void position_menu (Gtk.Menu menu, ref int x, ref int y, out bool push_in, void* panel_plugin);
        public void position_widget (Gtk.Widget menu_widget, Gtk.Widget attach_widget, int x, int y);
        public void register_menu (Gtk.Menu menu);
        public void remove ();
        public unowned string save_location (bool create);
        public void set_expand (bool expand);
        public void set_shrink (bool shrink);
        public void set_small (bool small);
        public void take_window (Gtk.Window window);
        public void unblock_menu ();
        [CCode (array_length = false, array_null_terminated = true)]
        public string[] arguments { get; construct; }
        public string comment { get; construct; }
        public string display_name { get; construct; }
        public bool expand { get; set; }
        public Xfce.PanelPluginMode mode { get; }
        public string name { get; construct; }
        public uint nrows { get; }
        public Gtk.Orientation orientation { get; }
        public Xfce.ScreenPosition screen_position { get; }
        public bool shrink { get; set; }
        public int size { get; }
        public bool small { get; set; }
        public int unique_id { get; construct; }
        public virtual signal void about ();
        public virtual signal void configure_plugin ();
        public virtual signal void free_data ();
        public virtual signal void mode_changed (Xfce.PanelPluginMode mode);
        public virtual signal void nrows_changed (uint rows);
        public virtual signal void orientation_changed (Gtk.Orientation orientation);
        public virtual signal bool remote_event (string name, GLib.Value value);
        public virtual signal void removed ();
        public virtual signal void save ();
        public virtual signal void screen_position_changed (Xfce.ScreenPosition position);
        public virtual signal bool size_changed (int size);
    }
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    [Compact]
    public class PanelTypeModule {
    }
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public interface PanelPluginProvider {
        public abstract void ask_remove ();
        public void emit_signal (Xfce.PanelPluginProviderSignal provider_signal);
        public abstract unowned string get_name ();
        public abstract bool get_show_about ();
        public abstract bool get_show_configure ();
        public abstract int get_unique_id ();
        public abstract bool remote_event (string name, GLib.Value value, uint handle);
        public abstract void removed ();
        public abstract void save ();
        public abstract void set_locked (bool locked);
        public abstract void set_mode (Xfce.PanelPluginMode mode);
        public abstract void set_nrows (uint rows);
        public abstract void set_screen_position (Xfce.ScreenPosition screen_position);
        public abstract void set_size (int size);
        public abstract void show_about ();
        public abstract void show_configure ();
        public signal void provider_signal (uint p0);
    }
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", cprefix = "XFCE_PANEL_PLUGIN_MODE_")]
    public enum PanelPluginMode {
        HORIZONTAL,
        VERTICAL,
        DESKBAR
    }
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", cprefix = "PROVIDER_PROP_TYPE_", has_type_id = false)]
    public enum PanelPluginProviderPropType {
        SET_SIZE,
        SET_MODE,
        SET_SCREEN_POSITION,
        SET_BACKGROUND_ALPHA,
        SET_NROWS,
        SET_LOCKED,
        SET_SENSITIVE,
        SET_BACKGROUND_COLOR,
        SET_BACKGROUND_IMAGE,
        ACTION_REMOVED,
        ACTION_SAVE,
        ACTION_QUIT,
        ACTION_QUIT_FOR_RESTART,
        ACTION_BACKGROUND_UNSET,
        ACTION_SHOW_CONFIGURE,
        ACTION_SHOW_ABOUT,
        ACTION_ASK_REMOVE
    }
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", cprefix = "PROVIDER_SIGNAL_", has_type_id = false)]
    public enum PanelPluginProviderSignal {
        MOVE_PLUGIN,
        EXPAND_PLUGIN,
        COLLAPSE_PLUGIN,
        SMALL_PLUGIN,
        UNSMALL_PLUGIN,
        LOCK_PANEL,
        UNLOCK_PANEL,
        REMOVE_PLUGIN,
        ADD_NEW_ITEMS,
        PANEL_PREFERENCES,
        PANEL_LOGOUT,
        PANEL_ABOUT,
        PANEL_HELP,
        SHOW_CONFIGURE,
        SHOW_ABOUT,
        FOCUS_PLUGIN,
        SHRINK_PLUGIN,
        UNSHRINK_PLUGIN
    }
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", cprefix = "XFCE_SCREEN_POSITION_")]
    public enum ScreenPosition {
        NONE,
        NW_H,
        N,
        NE_H,
        NW_V,
        W,
        SW_V,
        NE_V,
        E,
        SE_V,
        SW_H,
        S,
        SE_H,
        FLOATING_H,
        FLOATING_V
    }
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", has_target = false)]
    public delegate bool PanelPluginCheck (Gdk.Screen screen);
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", has_target = false)]
    public delegate void PanelPluginFunc (Xfce.PanelPlugin plugin);
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", has_target = false)]
    public delegate bool PanelPluginPreInit (int argc, string argv);
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", has_target = false)]
    public delegate unowned Gtk.Widget PluginConstructFunc (string name, int unique_id, string display_name, string comment, string arguments, Gdk.Screen screen);
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", has_target = false)]
    public delegate GLib.Type PluginInitFunc (GLib.TypeModule module, bool make_resident);
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public const int LIBXFCE4PANEL_MAJOR_VERSION;
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public const int LIBXFCE4PANEL_MICRO_VERSION;
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public const int LIBXFCE4PANEL_MINOR_VERSION;
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public const string LIBXFCE4PANEL_VERSION;
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", cname = "libxfce4panel_check_version")]
    public static unowned string libxfce4panel_check_version (uint required_major, uint required_minor, uint required_micro);
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public static unowned Gtk.Widget panel_create_button ();
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public static unowned Gtk.Widget panel_create_toggle_button ();
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public static unowned string panel_get_channel_name ();
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public static unowned Gdk.Pixbuf panel_pixbuf_from_source (string source, Gtk.IconTheme icon_theme, int size);
    [CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
    public static unowned Gdk.Pixbuf panel_pixbuf_from_source_at_size (string source, Gtk.IconTheme icon_theme, int dest_width, int dest_height);
}
