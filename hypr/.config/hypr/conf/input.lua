hl.config({
  input = {
    kb_layout     = 'us',
    kb_variant    = '',
    kb_model      = '',
    kb_options    = '',
    kb_rules      = '',

    follow_mouse  = 1,

    sensitivity   = -0.65, -- -1.0 - 1.0, 0 means no modification.
    scroll_factor = 0.8,

    touchpad      = {
      natural_scroll = false,
    },
  },
})

hl.gesture({
  fingers = 3,
  direction = 'horizontal',
  action = 'workspace'
})
