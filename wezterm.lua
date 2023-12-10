local wezterm = require("wezterm")
local keys = require("keybindings")
local colorscheme = require("colorscheme")

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- fonts
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = 400 })
-- config.font = wezterm.font("Victor Mono", { weight = 500 })
config.font_size = 11.5

-- color scheme
for k, v in pairs(colorscheme) do
	config[k] = v
end
config.command_palette_bg_color = "#161925"
config.bold_brightens_ansi_colors = false

-- password input
config.detect_password_input = true

-- tab bars
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

-- size
config.initial_rows = 20
config.initial_cols = 105

-- anti-aliasing
config.anti_alias_custom_block_glyphs = true

-- cursor
config.default_cursor_style = "SteadyUnderline"
config.default_cursor_style = "BlinkingUnderline"

-- scrollback
config.scrollback_lines = 3000

-- animation
config.animation_fps = 60

-- keys
config.disable_default_key_bindings = true
config.keys = keys

return config