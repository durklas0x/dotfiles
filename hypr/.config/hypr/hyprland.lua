-- Register permissions before loading the remaining configuration.
require("./conf/perms")
require("./conf/*")

-- For Noctalia Color templates
require("noctalia").apply_theme()
