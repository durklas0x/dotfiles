-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_THEME", "macOS")
hl.env("XCURSOR_SIZE", "24")

-- NVIDIA (Hyprland wiki: NVIDIA)
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")

-- Electron apps: native Wayland
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- GUI toolking backends
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")

-- Disables window decorations on Qt applications.
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")