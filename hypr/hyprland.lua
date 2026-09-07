var_terminal = "alacritty"
var_fileManager = "dolphin"
var_menu = "rofi -show drun -show-icons"
var_editor = "emacs"

-- This is my Hyprland config file.

-- Refer to the wiki for more information.

-- https://wiki.hyprland.org/Configuring/

-- You can split this configuration into multiple files

-- Create your files separately and then link them to this file like this:

-- source = ~/.config/hypr/myColors.conf

-- ###############

-- ## MONITORS ###

-- ###############

-- See https://wiki.hyprland.org/Configuring/Monitors/
hl.monitor({
    output = "",
    disabled = false,
    mode = "preferred",
    position = "auto",
    scale = 1,
})

-- ##################

-- ## MY PROGRAMS ###

-- ##################

-- See https://wiki.hyprland.org/Configuring/Keywords/

-- Set programs that you use

-- ################

-- ## AUTOSTART ###

-- ################

-- Autostart necessary processes (like notifications daemons, status bars, etc.)

-- Or execute your favorite apps at launch like this:

-- exec-once = $terminal

-- exec-once = nm-applet &

-- ?#  exec-once = XDG_MENU_PREFIX=plasma- kbuildsycoca6   # launch files from Dolphin

-- ?# exec-once = systemctl --user disable --now mako.service # disable mako notifs
hl.on("hyprland.start", function()
    hl.exec_cmd("waybar & hyprpaper & dunst")
end)

-- exec-once = ~/.config/hypr/scripts/battery_warning.sh # battery check every 5m

-- exec-once =  steam  -silent                          # add Steam at launch in waybar/tray

-- ############################

-- ## ENVIRONMENT VARIABLES ###

-- ############################

-- See https://wiki.hyprland.org/Configuring/Environment-variables/
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- ?# env = LIBVA_DRIVER_NAME,nvidia

-- ?# env = __GLX_VENDOR_LIBRARY_NAME,nvidia
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")

-- env = XDG_CURRENT_DESKTOP,wayland
hl.env("XDG_SESSION_TYPE", "wayland")

-- ##################

-- ## PERMISSIONS ###

-- ##################

-- See https://wiki.hyprland.org/Configuring/Permissions/

-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly

-- for security reasons

-- ecosystem {

-- enforce_permissions = 1

-- }

-- permission = /usr/(bin|local/bin)/grim, screencopy, allow

-- permission = /usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland, screencopy, allow

-- permission = /usr/(bin|local/bin)/hyprpm, plugin, allow

-- ####################

-- ## LOOK AND FEEL ###

-- ####################

-- Refer to https://wiki.hyprland.org/Configuring/Variables/

-- https://wiki.hyprland.org/Configuring/Variables/#general
hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 6,
        border_size = 2,
    },
})

-- https://wiki.hyprland.org/Configuring/Variables/#variable-types for info about colors
hl.config({
    general = {
        -- gaps_in = 3, gaps_out = 6, border_size = 2, resize_on_border = true, ...
        col = {
            active_border   = { colors = { "rgb(180,190,254)", "rgb(65,72,104)" }, angle = 45 },
            inactive_border = "rgb(36,40,59)",
        },
    },
})


-- Set to true enable resizing windows by clicking and dragging on borders and gaps
hl.config({
    general = {
        resize_on_border = true,
    },
})

-- Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
hl.config({
    general = {
        allow_tearing = false,
        layout = "dwindle",
    },
})

-- wallpaper (managed by hyprpaper)

-- https://wiki.hyprland.org/Configuring/Variables/#decoration
hl.config({
    decoration = {
        rounding = 10,
        rounding_power = 2,
    },
})

-- Change transparency of focused and unfocused windows
hl.config({
    decoration = {
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
    },
})

-- https://wiki.hyprland.org/Configuring/Variables/#blur
hl.config({
    decoration = {
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
})

-- https://wiki.hyprland.org/Configuring/Variables/#animations
hl.config({
    animations = {
        enabled = true,
    },
})

-- Default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more
hl.curve("easeOutQuint", { type = "bezier", points = { {0.23, 1}, {0.32, 1} } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1} } })
hl.curve("linear", { type = "bezier", points = { {0, 0}, {1, 1} } })
hl.curve("almostLinear", { type = "bezier", points = { {0.5, 0.5}, {0.75, 1.0} } })
hl.curve("quick", { type = "bezier", points = { {0.15, 0}, {0.1, 1} } })
hl.animation({
    leaf = "global",
    enabled = true,
    speed = 10,
    bezier = "default",
})
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 5.39,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 4.79,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 4.1,
    bezier = "easeOutQuint",
    style = "popin 87%",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 1.49,
    bezier = "linear",
    style = "popin 87%",
})
hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 1.73,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 1.46,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3.03,
    bezier = "quick",
})
hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 3.81,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 4,
    bezier = "easeOutQuint",
    style = "fade",
})
hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1.5,
    bezier = "linear",
    style = "fade",
})
hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 1.79,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 1.39,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "fade",
})
hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 1.21,
    bezier = "almostLinear",
    style = "fade",
})
hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "fade",
})

-- ############

-- ## RULES ###

-- ############

-- All terminals → workspace 1 (replaces the old "Workspace 1 terminal" rule)
hl.window_rule({
    name = "Workspace 1 terminals",
    match = { class = "^(Alacritty|alacritty|kitty|foot|footclient|st|st-256color|wezterm|org.wezfurlong.wezterm|ghostty|com.mitchellh.ghostty|konsole|org.kde.konsole|terminator|tilix|URxvt|XTerm)$" },
    workspace = 1,
})
hl.window_rule({
    name = "Workspace 1 file-manager",
    match = {
        class = "^(org\\.kde\\.dolphin)$",
    },
    workspace = 1,
})
hl.window_rule({
    name = "Workspace 2 browser",
    match = {
        class = "^(zen)$",
    },
    workspace = 2,
})
hl.window_rule({
    name = "Workspace 3 obsidian",
    match = {
        class = "^(md\\.obsidian\\.Obsidian)$",
    },
    workspace = 3,
})


-- Ref https://wiki.hyprland.org/Configuring/Workspace-Rules/

-- "Smart gaps" / "No gaps when only"

-- uncomment all if you wish to use that.

-- workspace = w[tv1], gapsout:0, gapsin:0

-- workspace = f[1], gapsout:0, gapsin:0

-- windowrule = bordersize 0, floating:0, onworkspace:w[tv1]

-- windowrule = rounding 0, floating:0, onworkspace:w[tv1]

-- windowrule = bordersize 0, floating:0, onworkspace:f[1]

-- windowrule = rounding 0, floating:0, onworkspace:f[1]

-- See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true,
    },
})

-- See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- https://wiki.hyprland.org/Configuring/Variables/#misc

-- ############

-- ## INPUT ###

-- ############

-- https://wiki.hyprland.org/Configuring/Variables/#input
hl.config({
    input = {
        kb_layout = "fr",
        kb_variant = "azerty",
        numlock_by_default = true,
        repeat_delay = 250,
        repeat_rate = 35,
        follow_mouse = 1,
        touchpad = {
            natural_scroll = true,
            disable_while_typing = false,
            clickfinger_behavior = false,
            scroll_factor = 0.5,
        },
    },
})
-- Same but for Ergo-L configuration
-- input {
--     kb_layout = fr
--     kb_variant = ergol_iso
-- }


-- https://wiki.hyprland.org/Configuring/Variables/#gestures

-- gestures {

-- workspace_swipe = false

-- }

-- Example per-device config

-- See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more
hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

-- ## KEYBINDINGS ###
require("keybinds")

-- #############################

-- ## WINDOWS AND WORKSPACES ###

-- #############################

-- See https://wiki.hyprland.org/Configuring/Window-Rules/ for more

-- See https://wiki.hyprland.org/Configuring/Workspace-Rules/ for workspace rules

-- Example windowrule

-- windowrule = float,class:^(kitty)$,title:^(kitty)$

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})


-- Settings to launch specifc Steam game minimize

-- Steam games (DOOM / autres) : keep the window tiled, don't float
hl.window_rule({
    name  = "steam-doom-tiled",
    match = { class = "^(steam_app_2280)$" },
    float = false,
})

-- Minecraft (Java)

-- HyprMod managed settings
require("hyprland-gui")
