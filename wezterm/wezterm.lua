local wezterm = require 'wezterm'
return {
 -- color_scheme = 'nordfox',
 color_scheme = 'Ocean Dark (Gogh)',
  window_decorations = "RESIZE",
  -- window_background_image = '/Users/jnchz/wallpapers/kali.jpg',
  font = wezterm.font('Source Code Pro', { italic = true }),
  font_size = 16,
  window_frame = {
    font_size = 15
  },
  tab_bar_at_bottom = true,
  hide_tab_bar_if_only_one_tab = true,
  window_background_opacity = 1,
  text_background_opacity = 1,
  freetype_load_flags = 'NO_HINTING|MONOCHROME',
  window_padding = {
    top = 12,
    right = 0,
    bottom = 0,
    left = 12,
  },
  keys = {
    {
      key = 's',
      mods = 'ALT',
      action = wezterm.action.SplitPane {
        direction = 'Right',
        size = { Percent = 50 }
      }
    },
    {
      key = 's',
      mods = 'ALT|SHIFT',
      action = wezterm.action.SplitPane {
        direction = 'Down',
        size = { Percent = 50 }
      }
    },
    {
      key = 'x',
      mods = 'ALT',
      action = wezterm.action.CloseCurrentPane {
        confirm = false,
      }
    },
    {
      key = 'Z',
      mods = 'CTRL',
      action = wezterm.action.TogglePaneZoomState,
    },
    {
      key = 'l',
      mods = 'ALT',
      action = wezterm.action.ActivatePaneDirection 'Next',
    },
    {
      key = 'l',
      mods = 'ALT|SHIFT',
      action = wezterm.action.ActivatePaneDirection 'Prev',
    },
  },
}
