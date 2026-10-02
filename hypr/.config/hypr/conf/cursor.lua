-- hyprpm loads the plugin; apply its settings when it is available.
if hl.plugin.dynamic_cursors then
  hl.config({
    plugin = {
      dynamic_cursors = {
        mode = 'tilt',
        shake = {
          enabled = false,
        },
      },
    },
  })
end
