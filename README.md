[i3 window manager](http://i3wm.org/) config

[i3 docs](http://i3wm.org/docs/)
[i3 FAQ](http://faq.i3wm.org)

[installation](http://i3wm.org/docs/repositories.html)

For wallpaper:

    sudo apt-get install nitrogern

Launcher with completion:

    sudo apt-get install gmrun

File manager:
* ranger
* vifm
* PCManFM

[Additional features from gnome (including suspend on lid close for a laptop)](http://off-topic.sardemff7.net/post/2012/06/21/About-the-GNOME-features-in-an-alternative-environment)

[xterm](http://scarygliders.net/2011/12/01/customize-xterm-the-original-and-best-terminal)

Edit or create .Xresources:

    vim ~/.Xresources

Settings:

    !xterm*font: terminus-12
    ! Use a nice truetype font and size by default...
    xterm*faceName: DejaVu Sans Mono Book
    xterm*faceSize: 10

    ! Every shell is a login shell by default (for inclusion of all necessary environment variables)
    xterm*loginshell: true

    ! I like a LOT of scrollback...
    xterm*savelines: 16384

    ! double-click to select whole URLs :D
    xterm*charClass: 33:48,36-47:48,58-59:48,61:48,63-64:48,95:48,126:48

    ! DOS-box colours...
    xterm*foreground: rgb:a8/a8/a8
    xterm*background: rgb:00/00/00
    xterm*color0: rgb:00/00/00
    xterm*color1: rgb:a8/00/00
    xterm*color2: rgb:00/a8/00
    xterm*color3: rgb:a8/54/00
    xterm*color4: rgb:00/00/a8
    xterm*color5: rgb:a8/00/a8
    xterm*color6: rgb:00/a8/a8
    xterm*color7: rgb:a8/a8/a8
    xterm*color8: rgb:54/54/54
    xterm*color9: rgb:fc/54/54
    xterm*color10: rgb:54/fc/54
    xterm*color11: rgb:fc/fc/54
    xterm*color12: rgb:54/54/fc
    xterm*color13: rgb:fc/54/fc
    xterm*color14: rgb:54/fc/fc
    xterm*color15: rgb:fc/fc/fc

    ! right hand side scrollbar...
    xterm*rightScrollBar: true
    xterm*ScrollBar: true

    ! stop output to terminal from jumping down to bottom of scroll again
    xterm*scrollTtyOutput: false

Apply changes:

    xrdb -merge ~/.Xresources
