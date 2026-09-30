local mainMod = "SUPER"
local ipc = "noctalia msg "

hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. " + Tab", hl.dsp.exec_cmd(ipc .. "window-switcher"))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.window.kill())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

-- Focus:  SUPER + arrows
-- Move:   SUPER + SHIFT + arrows
-- Resize: SUPER + CTRL + arrows (hold to repeat)
local dirs = {
    left  = { -40, 0 },
    right = { 40, 0 },
    up    = { 0, -40 },
    down  = { 0, 40 },
}
for dir, delta in pairs(dirs) do
    hl.bind(mainMod .. " + " .. dir, hl.dsp.focus({ direction = dir }))
    hl.bind(mainMod .. " + SHIFT + " .. dir, hl.dsp.window.move({ direction = dir }))
    hl.bind(mainMod .. " + CTRL + " .. dir,
        hl.dsp.window.resize({ x = delta[1], y = delta[2], relative = true }),
        { repeating = true })
end

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- TODO: Media keys
