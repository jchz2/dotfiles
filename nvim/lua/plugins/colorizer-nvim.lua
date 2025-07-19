return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require("colorizer").setup()
    DEFAULT_OPTIONS = {
      RGB      = true,         -- #RGB hex codes
      RRGGBB   = true,         -- #RRGGBB hex codes
      names    = true,         -- "Name" codes like Blue
      RRGGBBAA = true,        -- #rrggbbaa hex codes
      rgb_fn   = true,        -- css rgb() and rgba() functions
      hsl_fn   = true,        -- css hsl() and hsla() functions
      css      = true,        -- enable all css features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      css_fn   = true,        -- enable all css *functions*: rgb_fn, hsl_fn
    }
  end
}
