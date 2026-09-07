local var_mainMod = "SUPER"

-- KEYBINDINGS #

-- See https://wiki.hyprland.org/Configuring/Keywords/

-- See https://wiki.hyprland.org/Configuring/Binds/

-- # Main keybinds
hl.bind(var_mainMod .. " + Q", hl.dsp.window.close())
hl.bind(var_mainMod .. " + L", hl.dsp.exec_cmd("~/.config/hypr/scripts/rofi-power-menu.sh"))
hl.bind(var_mainMod .. " + SHIFT + Q", hl.dsp.window.kill())


-- # Navigate focus between windows
hl.bind(var_mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(var_mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(var_mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(var_mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- # Apps
hl.bind(var_mainMod .. " + Return", hl.dsp.exec_cmd(var_terminal))
hl.bind(var_mainMod .. " + E", hl.dsp.exec_cmd(var_menu))
hl.bind(var_mainMod .. " + D", hl.dsp.exec_cmd(var_fileManager))
hl.bind(var_mainMod .. " + B", hl.dsp.exec_cmd("zen-browser"))
hl.bind(var_mainMod .. " + Z", hl.dsp.exec_cmd(var_editor))
hl.bind(var_mainMod .. " + K", hl.dsp.exec_cmd("kate"))
hl.bind(var_mainMod .. " + O", hl.dsp.exec_cmd("obsidian"))
hl.bind(var_mainMod .. " + W", hl.dsp.exec_cmd("networkmanager_dmenu -theme ~/.config/rofi/network.rasi"))
hl.bind(var_mainMod .. " + SEMICOLON", hl.dsp.exec_cmd("rofi -modi emoji -show emoji ~/.config/rofi/network.rasi"))

-- # Windows management
hl.bind(var_mainMod .. " + mouse:272", hl.dsp.window.drag(), {
    mouse = true,
})
hl.bind(var_mainMod .. " + mouse:273", hl.dsp.window.resize(), {
    mouse = true,
})
hl.bind(var_mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(var_mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(var_mainMod .. " + F11", hl.dsp.window.fullscreen())
hl.bind(var_mainMod .. " + SHIFT + F11", hl.dsp.window.fullscreen())
hl.bind(var_mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(var_mainMod .. " + M", hl.dsp.layout("swapnext")) -- swap window woth next

-- # Switch workspaces
hl.bind(var_mainMod .. " + mouse_down", hl.dsp.exec_cmd("~/.config/hypr/scripts/smart_workspace_scroll.sh -1"))
hl.bind(var_mainMod .. " + mouse_up", hl.dsp.exec_cmd("~/.config/hypr/scripts/smart_workspace_scroll.sh 1"))

-- # Switch to workspace n
hl.bind(var_mainMod .. " + code:10", hl.dsp.focus({ workspace = 1 }))
hl.bind(var_mainMod .. " + code:11", hl.dsp.focus({ workspace = 2 }))
hl.bind(var_mainMod .. " + code:12", hl.dsp.focus({ workspace = 3 }))
hl.bind(var_mainMod .. " + code:13", hl.dsp.focus({ workspace = 4 }))
hl.bind(var_mainMod .. " + code:14", hl.dsp.focus({ workspace = 5 }))
hl.bind(var_mainMod .. " + code:15", hl.dsp.focus({ workspace = 6 }))
hl.bind(var_mainMod .. " + code:16", hl.dsp.focus({ workspace = 7 }))
hl.bind(var_mainMod .. " + code:17", hl.dsp.focus({ workspace = 8 }))
hl.bind(var_mainMod .. " + code:18", hl.dsp.focus({ workspace = 9 }))
hl.bind(var_mainMod .. " + code:19", hl.dsp.focus({ workspace = 10 }))

-- # Move active window to workspace n
hl.bind(var_mainMod .. " + SHIFT + code:10", hl.dsp.window.move({ workspace = 1 }))
hl.bind(var_mainMod .. " + SHIFT + code:11", hl.dsp.window.move({ workspace = 2 }))
hl.bind(var_mainMod .. " + SHIFT + code:12", hl.dsp.window.move({ workspace = 3 }))
hl.bind(var_mainMod .. " + SHIFT + code:13", hl.dsp.window.move({ workspace = 4 }))
hl.bind(var_mainMod .. " + SHIFT + code:14", hl.dsp.window.move({ workspace = 5 }))
hl.bind(var_mainMod .. " + SHIFT + code:15", hl.dsp.window.move({ workspace = 6 }))
hl.bind(var_mainMod .. " + SHIFT + code:16", hl.dsp.window.move({ workspace = 7 }))
hl.bind(var_mainMod .. " + SHIFT + code:17", hl.dsp.window.move({ workspace = 8 }))
hl.bind(var_mainMod .. " + SHIFT + code:18", hl.dsp.window.move({ workspace = 9 }))
hl.bind(var_mainMod .. " + SHIFT + code:19", hl.dsp.window.move({ workspace = 10 }))

-- # Screenshot
hl.bind(var_mainMod .. " + F2", hl.dsp.exec_cmd("grim -g \"$(slurp -c B4BEFEAA -b 1A1B2699)\" - | wl-copy && notify-send \"📸 Screenshot 🖼️\" \"Screenshot copied to clipboard\""))
hl.bind(var_mainMod .. " + SHIFT + F2", hl.dsp.exec_cmd("mkdir -p ~/Images/Screenshots && grim -g \"$(slurp -c B4BEFEAA -b 1A1B2699)\" ~/Images/Screenshots/screenshot_$(date +'%d-%m-%Y_%Hh-%Mm-%Ss').png && notify-send \"📸 Screenshot 💾\" \"Screenshot saved to  ~/Images/Screenshots !\""))

-- # Notifications
hl.bind("SUPER + Y", hl.dsp.exec_cmd("notify-send \"Hello!\" \"This is a test notification.\" -u normal"))
hl.bind("SUPER + U", hl.dsp.exec_cmd("notify-send \"Warning!\" \"This is a critical notification!\" -u critical"))

-- # Multimedia
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("~/.config/hypr/scripts/volume_notify.sh up"), {
    repeating = true,
    locked = true,
})
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("~/.config/hypr/scripts/volume_notify.sh down"), {
    repeating = true,
    locked = true,
})
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("~/.config/hypr/scripts/brightness_notify.sh up"), {
    repeating = true,
    locked = true,
})
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("~/.config/hypr/scripts/brightness_notify.sh down"), {
    repeating = true,
    locked = true,
})
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), {
    repeating = true,
    locked = true,
})
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), {
    repeating = true,
    locked = true,
})
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), {
    locked = true,
})
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), {
    locked = true,
})
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), {
    locked = true,
})
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), {
    locked = true,
})

-- # Misc

-- Example special workspace (scratchpad)

-- bind = $mainMod, S, togglespecialworkspace, magic

-- bind = $mainMod SHIFT, S, movetoworkspace, special:magic

-- bind = $mainMod, G, exec, /home/gilles/.config/hypr/scripts/lock.sh    # Lockscreen the window
