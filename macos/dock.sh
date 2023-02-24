#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Firefox.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/System/Applications/KeepasXC.app"
dockutil --no-restart --add "/System/Applications/iTerm.app"
dockutil --no-restart --add "/System/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/System/Applications/System Settings.app"

killall Dock
