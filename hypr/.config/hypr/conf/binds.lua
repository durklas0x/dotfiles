local mainMod = 'SUPER'
local ipc = 'noctalia msg '

hl.bind(mainMod .. ' + Space', hl.dsp.exec_cmd(ipc .. 'panel-toggle launcher'))
hl.bind(mainMod .. ' + Tab', hl.dsp.exec_cmd(ipc .. 'window-switcher'))
hl.bind(mainMod .. ' + C', hl.dsp.window.close())
hl.bind(mainMod .. ' + SHIFT + C', hl.dsp.window.kill())
hl.bind(mainMod .. ' + V', hl.dsp.window.float({ action = 'toggle' }))
hl.bind(mainMod .. ' + F', hl.dsp.window.fullscreen({ mode = 'fullscreen', action = 'toggle' }))
hl.bind(mainMod .. ' + J', hl.dsp.layout('togglesplit')) -- dwindle

-- Focus:  SUPER + arrows
-- Move:   SUPER + SHIFT + arrows
-- Resize: SUPER + ALT + arrows (hold to repeat)
local dirs = {
  left  = { -40, 0 },
  right = { 40, 0 },
  up    = { 0, -40 },
  down  = { 0, 40 },
}
for dir, delta in pairs(dirs) do
  hl.bind(mainMod .. ' + ' .. dir, hl.dsp.focus({ direction = dir }))
  hl.bind(mainMod .. ' + SHIFT + ' .. dir, hl.dsp.window.move({ direction = dir }))
  hl.bind(mainMod .. ' + ALT + ' .. dir,
    hl.dsp.window.resize({ x = delta[1], y = delta[2], relative = true }),
    { repeating = true })
end

-- Workspaces 1-10 (0 selects 10); SHIFT moves the active window and follows it.
for workspace = 1, 10 do
  local key = workspace % 10
  hl.bind(mainMod .. ' + ' .. key, hl.dsp.focus({ workspace = workspace }))
  hl.bind(mainMod .. ' + SHIFT + ' .. key, hl.dsp.window.move({ workspace = workspace }))
end

-- Scratchpad and cycling through existing workspaces.
hl.bind(mainMod .. ' + S', hl.dsp.workspace.toggle_special('magic'))
-- Minimize into the scratchpad without switching away from the current workspace.
hl.bind(mainMod .. ' + SHIFT + S',
  hl.dsp.window.move({ workspace = 'special:magic', follow = false }))
hl.bind(mainMod .. ' + mouse_down', hl.dsp.focus({ workspace = 'e+1' }))
hl.bind(mainMod .. ' + mouse_up', hl.dsp.focus({ workspace = 'e-1' }))

hl.bind(mainMod .. ' + mouse:272', hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. ' + mouse:273', hl.dsp.window.resize(), { mouse = true })

-- TODO: Media keys
