-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

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

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Don't let the screen sleep/lock while anything is fullscreen
-- (videos, games). Takes effect once hypridle is set up.
hl.window_rule({
    name = "idle-inhibit-fullscreen",
    match = { class = ".*" },
    idle_inhibit = "fullscreen",
})

hl.window_rule({
    name = "steam-games",
    match = { class = "steam_app_.*" },
    content = "game",
    workspace = "10",
})

-- Steam's Friends List: float instead of tiling
hl.window_rule({
    match = { class = "steam", title = "Friends List" },
    float = true,
    size = { 400, 700 },
})

-- Noctalia Settings
hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})

-- Zen picture-in-picture: small, floating, on every workspace, bottom-right
hl.window_rule({
    name = "pip",
    match = { title = "Picture-in-Picture" },
    float = true,
    pin = true,
    keep_aspect_ratio = true,
    size = { "monitor_w*0.25", "monitor_h*0.25" },
    move = { "monitor_w-window_w-20", "monitor_h-window_h-20" },
})
