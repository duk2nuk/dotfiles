-- Pull in WezTerm API
local wezterm = require("wezterm")
-- Returns color scheme dependant on operating system theme setting (dark/light)
local function color_scheme_for_appearance(appearance)
  if appearance:find("Dark") then
    return "Tokyo Night Moon"
  else
    return "Tokyo Night Day"
  end
end

-- Initialize actual config
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Appearance
config.font = wezterm.font "JetBrainsMono Nerd Font"
config.font_size = 13.0
-- config.color_scheme = color_scheme_for_appearance(wezterm.gui.get_appearance())
config.color_scheme = "Tokyo Night Moon"
config.window_background_opacity = window_background_opacity
config.window_frame = {
  font = wezterm.font({family = 'JetBrains Mono', weight = 'Bold'}),
  font_size = 13.0,
}
config.macos_window_background_blur = 10
-- config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.native_macos_fullscreen_mode = false
config.use_fancy_tab_bar = true
config.max_fps = 144
config.animation_fps = 144

-- Return config to WezTerm
return config
