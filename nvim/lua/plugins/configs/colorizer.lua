local is_colorizer_loaded, colorizer = pcall(require, 'colorizer')
if not is_colorizer_loaded then
  return
end

colorizer.setup({ '*' }, {
   RGB = true, -- #RGB hex codes
   RRGGBB = true, -- #RRGGBB hex codes
   names = false, -- 'Name' codes like White
   RRGGBBAA = false, -- #RRGGBBAA hex codes
   rgb_fn = false, -- CSS rgb() and rgba() functions
   hsl_fn = false, -- CSS hsl() and hsla() functions
   css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
   css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn

   -- Available modes: foreground, background
   mode = 'background', -- Set the display mode.
})
