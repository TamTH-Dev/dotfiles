local is_colors_loaded, highlights = pcall(require, 'colors.highlights')
local is_devicons_loaded, icons = pcall(require, 'nvim-web-devicons')
if not (is_devicons_loaded or is_colors_loaded) then
   return
end

-- Colors
local colors = highlights.colors

icons.setup {
   override = {
      c = {
         icon = '',
         color = colors.blue,
         name = 'c',
      },
      css = {
         icon = '',
         color = colors.blue,
         name = 'css',
      },
      deb = {
         icon = '',
         color = colors.cyan,
         name = 'deb',
      },
      Dockerfile = {
         icon = '',
         color = colors.cyan,
         name = 'Dockerfile',
      },
      html = {
         icon = '',
         color = colors.red,
         name = 'html',
      },
      jpeg = {
         icon = '',
         color = colors.magenta,
         name = 'jpeg',
      },
      jpg = {
         icon = '',
         color = colors.magenta,
         name = 'jpg',
      },
      js = {
         icon = '',
         color = colors.red,
         name = 'js',
      },
      kt = {
         icon = '󱈙',
         color = colors.orange,
         name = 'kt',
      },
      lock = {
         icon = '',
         color = colors.red,
         name = 'lock',
      },
      lua = {
         icon = '',
         color = colors.blue,
         name = 'lua',
      },
      mp3 = {
         icon = '',
         color = colors.fg,
         name = 'mp3',
      },
      mp4 = {
         icon = '',
         color = colors.fg,
         name = 'mp4',
      },
      out = {
         icon = '',
         color = colors.fg,
         name = 'out',
      },
      png = {
         icon = '',
         color = colors.magenta,
         name = 'png',
      },
      py = {
         icon = '',
         color = colors.cyan,
         name = 'py',
      },
      toml = {
         icon = '',
         color = colors.blue,
         name = 'toml',
      },
      ts = {
         icon = '',
         color = colors.green,
         name = 'ts',
      },
      rb = {
         icon = '',
         color = colors.red,
         name = 'rb',
      },
      rpm = {
         icon = '',
         color = colors.orange,
         name = 'rpm',
      },
      vue = {
         icon = '﵂',
         color = colors.green,
         name = 'vue',
      },
      xz = {
         icon = '',
         color = colors.orange,
         name = 'xz',
      },
      zip = {
         icon = '',
         color = colors.orange,
         name = 'zip',
      }
   }
}
