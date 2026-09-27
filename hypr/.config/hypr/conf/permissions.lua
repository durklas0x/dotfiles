hl.config({ ecosystem = { enforce_permissions = true } })

hl.permission({ binary = ".*", type = "plugin", mode = "deny" })

hl.permission({ binary = "/usr/lib/xdg-desktop-portal-hyprland", type = "screencopy", mode = "allow" })
