-- Behavior (non-visual settings)
-- https://wiki.hypr.land/Configuring/Core/Config-options/

hl.config({
  misc = {
    key_press_enables_dpms = true,  -- wake screen on key press
    mouse_move_enables_dpms = true, -- wake screen on mouse move
  },
  render = {
    direct_scanout = 2, -- auto: lower latency for fullscreen games
  },
})
