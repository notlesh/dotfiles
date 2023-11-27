-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Vs Code Dark+ (Gogh)'

-- opacity
config.window_background_opacity = 0.72
config.text_background_opacity = 1.0

-- only show tab bar if more than one tab
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font 'HackNerdFontMono'
config.font_size = 9.5

-- reduce padding
config.window_padding = {
	left = "0.6cell",
	right = "0.6cell",
	top = "0.1cell",
	bottom = "0cell",
}

-- and finally, return the configuration to wezterm
return config

