awful = require("awful")
awful.util = require("awful.util")

-- {{{ Main
theme = {}
theme.wallpaper = "/home/jon/Pictures/Backgrounds/AdventureTime.jpg"
theme.font = "Roboto 8"
-- }}}

-- {{{ Colors
theme.fg_normal = "#DDDDDD"
theme.fg_focus = "#D81860"
theme.fg_urgent = "#ffffff"
theme.fg_tooltip = "#1a1a1a"
theme.fg_em = "#d6d6d6"

theme.bg_normal = "#212021"
theme.bg_focus = "#212021"
theme.bg_urgent = "#F00060"
theme.bg_tooltip = "#d6d6d6d6"
theme.bg_em = "#5a5a5a"
theme.bg_systray = theme.bg_normal

theme.fg_widget = "908884"
theme.fg_center_widget = "#636363"
theme.fg_end_widget = "#ffffff"
theme.fg_bg_widget = "#333333"
theme.border_widget = "#3F3F3F"
--- }}}

-- {{{ Borders
theme.border_width = 1
theme.border_normal = "#222222"
theme.border_focus = "#908884"
theme.border_marked = "#91231c"
theme.border_tooltip = "#444444"
-- }}}

-- {{{ Menu
theme.menu_height = 15
theme.menu_width = 100
-- }}}

-- {{{ Taglist
theme.taglist_squares_sel = awful.util.getdir("config") .. "/themes/mytheme/taglist14/squaref.png"
theme.taglist_squares_unsel = awful.util.getdir("config") .. "/themes/mytheme/taglist14/square.png"
-- }}}

-- {{{ Misc
theme.awesome_icon = awful.util.getdir("config") .. "/themes/mytheme/awesome14-dust.png"
theme.menu_submenu_icon = "/usr/share/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile = awful.util.getdir("config") .. "/themes/mytheme/layouts14/tilew.png"
theme.layout_tileleft = awful.util.getdir("config") .. "/themes/mytheme/layouts14/tileleftw.png"
theme.layout_tilebottom = awful.util.getdir("config") .. "/themes/mytheme/layouts14/tilebottomw.png"
theme.layout_tiletop = awful.util.getdir("config") .. "/themes/mytheme/layouts14/tiletopw.png"
theme.layout_fairv = awful.util.getdir("config") .. "/themes/mytheme/layouts14/fairvw.png"
theme.layout_fairh = awful.util.getdir("config") .. "/themes/mytheme/layouts14/fairhw.png"
theme.layout_spiral = awful.util.getdir("config") .. "/themes/mytheme/layouts14/spiralw.png"
theme.layout_dwindle = awful.util.getdir("config") .. "/themes/mytheme/layouts14/dwindlew.png"
theme.layout_max = awful.util.getdir("config") .. "/themes/mytheme/layouts14/maxw.png"
theme.layout_fullscreen = awful.util.getdir("config") .. "/themes/mytheme/layouts14/fullscreenw.png"
theme.layout_magnifier = awful.util.getdir("config") .. "/themes/mytheme/layouts14/magnifierw.png"
theme.layout_floating = awful.util.getdir("config") .. "/themes/mytheme/layouts14/floatingw.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus = "/usr/share/awesome/themes/default/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/default/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active = "/usr/share/awesome/themes/default/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive = "/usr/share/awesome/themes/default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active = "/usr/share/awesome/themes/default/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive = "/usr/share/awesome/themes/default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active = "/usr/share/awesome/themes/default/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive = "/usr/share/awesome/themes/default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active = "/usr/share/awesome/themes/default/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive = "/usr/share/awesome/themes/default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/maximized_normal_inactive.png"
-- }}}

-- {{{ Widgets
theme.widget_disk = awful.util.getdir("config") .. "/themes/icons/dust/disk.png"
theme.widget_cpu = awful.util.getdir("config") .. "/themes/icons/dust/cpu.png"
theme.widget_ac = awful.util.getdir("config") .. "/themes/icons/dust/ac.png"
theme.widget_acblink = awful.util.getdir("config") .. "/themes/icons/dust/acblink.png"
theme.widget_blank = awful.util.getdir("config") .. "/themes/icons/dust/blank.png"
theme.widget_batfull = awful.util.getdir("config") .. "/themes/icons/dust/batfull.png"
theme.widget_batmed = awful.util.getdir("config") .. "/themes/icons/dust/batmed.png"
theme.widget_batlow = awful.util.getdir("config") .. "/themes/icons/dust/batlow.png"
theme.widget_batempty = awful.util.getdir("config") .. "/themes/icons/dust/batempty.png"
theme.widget_vol = awful.util.getdir("config") .. "/themes/icons/dust/vol.png"
theme.widget_mute = awful.util.getdir("config") .. "/themes/icons/dust/mute.png"
theme.widget_pac = awful.util.getdir("config") .. "/themes/icons/dust/pac.png"
theme.widget_pacnew = awful.util.getdir("config") .. "/themes/icons/dust/pacnew.png"
theme.widget_mail = awful.util.getdir("config") .. "/themes/icons/dust/mail.png"
theme.widget_mailnew = awful.util.getdir("config") .. "/themes/icons/dust/mailnew.png"
theme.widget_temp = awful.util.getdir("config") .. "/themes/icons/dust/temp.png"
theme.widget_tempwarn = awful.util.getdir("config") .. "/themes/icons/dust/tempwarm.png"
theme.widget_temphot = awful.util.getdir("config") .. "/themes/icons/dust/temphot.png"
theme.widget_wifi = awful.util.getdir("config") .. "/themes/icons/dust/wifi.png"
theme.widget_nowifi = awful.util.getdir("config") .. "/themes/icons/dust/nowifi.png"
theme.widget_mpd = awful.util.getdir("config") .. "/themes/icons/dust/mpd.png"
theme.widget_play = awful.util.getdir("config") .. "/themes/icons/dust/play.png"
theme.widget_pause = awful.util.getdir("config") .. "/themes/icons/dust/pause.png"
theme.widget_ram = awful.util.getdir("config") .. "/themes/icons/dust/ram.png"

theme.widget_mem = awful.util.getdir("config") .. "/themes/icons/dust/ram.png"
theme.widget_swap = awful.util.getdir("config") .. "/themes/icons/dust/swap.png"
theme.widget_fs = awful.util.getdir("config") .. "/themes/icons/dust/fs_01.png"
theme.widget_fs2 = awful.util.getdir("config") .. "/themes/icons/dust/fs_02.png"
theme.widget_up = awful.util.getdir("config") .. "/themes/icons/dust/up.png"
theme.widget_down = awful.util.getdir("config") .. "/themes/icons/dust/down.png"
-- }}}

-- {{{ Separator
theme.widget_sep = awful.util.getdir("config") .. "/themes/icons/him/separatororig.png"

return theme
