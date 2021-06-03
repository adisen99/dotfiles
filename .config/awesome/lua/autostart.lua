-- Autostart applications

local autostart = {}

local awful = require("awful")

awful.spawn.with_shell('picom')
awful.spawn.with_shell('volumeicon')
awful.spawn.with_shell('nitrogen --restore')
awful.spawn.with_shell('nm-applet')

return autostart
