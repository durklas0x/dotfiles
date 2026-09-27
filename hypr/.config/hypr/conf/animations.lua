-- Curves
hl.curve("snappy", { type = "bezier", points = { {0.22, 1}, {0.36, 1} } })
hl.curve("linear", { type = "bezier", points = { {0, 0}, {1, 1} } })
hl.curve("smooth", { type = "spring", mass = 1, stiffness = 200, dampening = 23 })

-- Windows
hl.animation({ leaf = "windows",     enabled = true, speed = 3,   bezier = "snappy", style = "popin 85%" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 2,   bezier = "snappy", style = "popin 85%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3,   spring = "smooth" })

-- Fades and layers
hl.animation({ leaf = "fade",   enabled = true, speed = 2.5, bezier = "snappy" })
hl.animation({ leaf = "layers", enabled = true, speed = 2,   bezier = "snappy", style = "fade" })

-- Workspaces
hl.animation({ leaf = "workspaces",       enabled = true, speed = 3, bezier = "snappy", style = "slidefade 15%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "snappy", style = "slidevert" })

-- Border
hl.animation({ leaf = "border",      enabled = true, speed = 4, bezier = "linear" })
hl.animation({ leaf = "borderangle", enabled = false })
