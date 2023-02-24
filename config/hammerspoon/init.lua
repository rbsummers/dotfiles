mash = {"⌘", "⌥", "⌃"}

require "apps"
require "grid"

hs.hotkey.bind(mash, "r", function() hs.reload(); end)
hs.hotkey.bind(mash, "a", function() hs.caffeinate.lockScreen(); end)
hs.dockIcon(false)
hs.alert("Hammerspoon config loaded")
