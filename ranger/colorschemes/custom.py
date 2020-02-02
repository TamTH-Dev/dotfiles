# Ivaylo Kuzev <ivkuzev@gmail.com>, 2014
# Zenburn like colorscheme for https://github.com/hut/ranger .

# default colorscheme.
# Copyright (C) 2009-2013  Roman Zimbelmann <hut@lepus.uberspace.de>
# This software is distributed under the terms of the GNU GPL version 3.

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import default_colors, reverse, bold, normal, default


# pylint: disable=too-many-branches,too-many-statements
class Zenburn(ColorScheme):
    progress_bar_color = 12

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                attr = reverse
            else:
                attr = normal
            if context.empty or context.error:
                fg = 9
            if context.border:
                fg = 12
            if context.image:
                fg = 12
            if context.video:
                fg = 12
            if context.audio:
                fg = 12
            if context.document:
                fg = 12
            if context.container:
                attr |= bold
                fg = 12
            if context.directory:
                attr |= bold
                fg = 12
            elif context.executable and not \
                    any((context.media, context.container,
                         context.fifo, context.socket)):
                attr |= bold
                fg = 208
            if context.socket:
                fg = 180
                attr |= bold
            if context.fifo or context.device:
                fg = 144
                if context.device:
                    attr |= bold
            if context.link:
                fg = 255 if context.good else 9
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg in (174, 95):
                    fg = 248
                else:
                    fg = 174
            if not context.selected and (context.cut or context.copied):
                fg = 12
            if context.main_column:
                if context.selected:
                    attr |= bold
                if context.marked:
                    attr |= bold
                    fg = 223
            if context.badinfo:
                if attr & reverse:
                    bg = 95
                else:
                    fg = 95

        elif context.in_titlebar:
            attr |= bold
            if context.hostname:
                fg = 174 if context.bad else 180
            elif context.directory:
                fg = 223
            elif context.tab:
                if context.good:
                    bg = 180
            elif context.link:
                fg = 116

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 12
                elif context.bad:
                    fg = 9
            if context.marked:
                attr |= bold | reverse
                fg = 12
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = 9
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = 116
                attr &= ~bold
            if context.vcscommit:
                fg = 144
                attr &= ~bold

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = 116

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color

        if context.vcsfile and not context.selected:
            attr &= ~bold
            if context.vcsconflict:
                fg = 9
            elif context.vcschanged:
                fg = 12
            elif context.vcsunknown:
                fg = 12
            elif context.vcsstaged:
                fg = 12
            elif context.vcssync:
                fg = 12
            elif context.vcsignored:
                fg = default

        elif context.vcsremote and not context.selected:
            attr &= ~bold
            if context.vcssync:
                fg = 12
            elif context.vcsbehind:
                fg = 12
            elif context.vcsahead:
                fg = 116
            elif context.vcsdiverged:
                fg = 12
            elif context.vcsunknown:
                fg = 12

        return fg, bg, attr
