hl.on('hyprland.start', function()
  hl.exec_cmd('noctalia')
  hl.exec_cmd('hyprpm reload')

  -- hl.exec_cmd([[
  --   /bin/sh -c '
  --       hyprctl output create headless STREAM &&
  --       systemctl --user start app-dev.lizardbyte.app.Sunshine
  --   '
  -- ]])
end)
