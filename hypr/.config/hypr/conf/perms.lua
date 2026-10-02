-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/

hl.config({ ecosystem = { enforce_permissions = true } })

hl.permission({ binary = '/usr/(bin|local/bin)/hyprpm', type = 'plugin', mode = 'allow' })
hl.permission({ binary = '.*', type = 'plugin', mode = 'deny' })

hl.permission({ binary = '/usr/lib/xdg-desktop-portal-hyprland', type = 'screencopy', mode = 'allow' })

-- Noctalia screenshots and cursor capture.
hl.permission({ binary = '/usr/bin/noctalia', type = 'screencopy', mode = 'allow' })
hl.permission({ binary = '/usr/bin/noctalia', type = 'cursorpos', mode = 'allow' })

hl.permission({
  binary = '/usr/bin/sunshine',
  type = 'screencopy',
  mode = 'allow',
})
