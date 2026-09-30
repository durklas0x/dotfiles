-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.monitor({ output = "DP-1", mode = "2560x1440@165.08", position = "0x0", scale = 1, vrr = 2 })

hl.monitor({
    output = "STREAM",
    mode = "5120x2880@90",
    position = "6000x0",
    scale = 2,
})

