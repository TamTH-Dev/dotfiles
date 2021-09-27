local theme                                     = {}
-- theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/powerarrow-blue"
--theme.wallpaper                                 = theme.dir .. "/starwars.jpg"

local colors = {
  transparent = '#00000000',
  stormBackground = '#24283b',
  nightBackground = '#1a1b26',
  foreground = '#c0caf5',
  comment = '#565f89',

  red = '#f7768e',
  orange = '#ff9e64',
  brown = '#e0af68',
  green = '#9ece6a',
  magenta = '#bb9af7',
  blue = '#2ac3de',
  cyan = '#7dcfff',
  lightBlue = '#73daca'
}

theme.font                                      = "JetBrainsMono Nerd Font:style=Bold 10"
theme.taglist_font                              = "JetBrainsMono Nerd Font:style=Bold 10"
theme.fg_normal                                 = colors.foreground
-- theme.fg_focus                                  = colors.blue
-- theme.fg_urgent                                 = colors.blue
theme.bg_normal                                 = colors.stormBackground
theme.bg_focus                                  = colors.blue
theme.bg_urgent                                 = colors.stormBackground
theme.taglist_fg_focus                          = colors.nightBackground
theme.tasklist_bg_focus                         = colors.stormBackground
theme.tasklist_fg_focus                         = colors.magenta
theme.border_width                              = 1
theme.border_normal                             = colors.foreground
theme.border_focus                              = colors.red
theme.border_marked                             = colors.orange
-- theme.titlebar_bg_focus                         = colors.stormBackground
-- theme.titlebar_bg_normal                        = colors.stormBackground
-- theme.titlebar_bg_focus                         = colors.stormBackground
-- theme.titlebar_bg_normal                        = colors.stormBackground
-- theme.titlebar_fg_focus                         = theme.fg_focus
-- theme.menu_height                               = 48
-- theme.menu_width                                = 140
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 4

return theme
