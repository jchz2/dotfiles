local wezterm = require("wezterm")
return {
  color_scheme = "Ocean (dark) (terminal.sexy)",

	window_decorations = "RESIZE", --"RESIZE, TITLE or INTEGRATED_BUTTONS|RESIZE",
	-- window_close_confirmation = "NeverPrompt",
	-- window_background_image = '/Users/jczamora/wallpapers/mac/728968.jpg',
	-- font = wezterm.font("Iosevka Nerd Font", { italic = true, bold = true }),
	font = wezterm.font("PlemolJP35 Console NF", { italic = true, bold = false }),
	font_size = 12,
	window_frame = {
		font_size = 12,
	},
	tab_bar_at_bottom = true,
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 1,
	text_background_opacity = 1,
	default_cursor_style = "BlinkingBar",
	freetype_load_flags = "NO_HINTING|MONOCHROME",
	window_padding = {
		top = 0,
		right = 5,
		bottom = 0,
		left = 5,
	},
	keys = {
		{
			key = "s",
			mods = "ALT",
			action = wezterm.action.SplitPane({
				direction = "Right",
				size = { Percent = 50 },
			}),
		},
		{
			key = "s",
			mods = "ALT|SHIFT",
			action = wezterm.action.SplitPane({
				direction = "Down",
				size = { Percent = 50 },
			}),
		},
		{
			key = "x",
			mods = "ALT",
			action = wezterm.action.CloseCurrentPane({
				confirm = false,
			}),
		},
		{
			key = "L",
			mods = "CTRL",
			action = wezterm.action.TogglePaneZoomState,
		},
		{
			key = "l",
			mods = "ALT",
			action = wezterm.action.ActivatePaneDirection("Next"),
		},
		{
			key = "l",
			mods = "ALT|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Prev"),
		},
	},
}
