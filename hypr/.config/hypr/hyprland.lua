-- Plugin permissions must be registered before cursor.lua loads the plugin.
require("./conf/perms")
require("./conf/*")

-- For Noctalia Color templates
require("noctalia").apply_theme()
