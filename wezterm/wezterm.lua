local wezterm = require("wezterm")

return {
	color_scheme = 'Urple',
  -- color_scheme = 'iceberg-dark',


	window_decorations = "RESIZE", --"RESIZE, TITLE or INTEGRATED_BUTTONS|RESIZE",
	window_close_confirmation = "NeverPrompt",
	-- window_background_image = '/Users/jczamora/wallpapers/nord/montanas-minimalista-arte-low-poly_3840x2160_xtrafondos.com.jpg',
	-- font = wezterm.font("SauceCodePro Nerd Font Propo", { italic = true, bold = false, ligatures = true }),
	font = wezterm.font("FiraCode Nerd Font", { italic = true, bold = false }),
	font_size = 13,
	window_frame = {
	font_size = 16,
	},
	enable_tab_bar = false,
	tab_bar_at_bottom = true,
	hide_tab_bar_if_only_one_tab = true,
	-- window_background_opacity = 0.70,
	macos_window_background_blur = 69,
	text_background_opacity = 1,
	default_cursor_style = "BlinkingBar", -- SteadyBar, BlinkingBar, BlinkingUnderline, Block, Underline, Beam 
	freetype_load_flags = "NO_HINTING|MONOCHROME",
	window_padding = {
	top = 42,
	right = 12,
	bottom = 6,
	left = 2,
	},
	keys = {
		{
			key = "v",
			mods = "ALT",
			action = wezterm.action.SplitPane({
				direction = "Right",
				size = { Percent = 50 },
			}),
		},
		{
			key = "V",
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
			key = "Z",
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
