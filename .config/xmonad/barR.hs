Config { 
   -- appearance
    font =         "ComicShannsMono Nerd Font 14"
   , additionalFonts = []
   , bgColor =      "#1e1e2e"
   , fgColor =      "#cdd6f4"
   , position =     Static { xpos = 1920, ypos = 0, width=1920, height=26 }
   , border =       NoBorder
   , borderColor =  "#74c7ec"
   , alpha = 255
   , textOffset = -1
   , iconOffset = -1
   , lowerOnStart = True
   , pickBroadest = False
   , persistent = False
   , hideOnStart = False
   , allDesktops = True
   , overrideRedirect = True
   , commands = [ Run UnsafeXPropertyLog "_XMONAD_LOG_1"
                , Run Cpu ["-L", "3", "-H", "50",
                           "--normal", "green", "--high", "red"] 10
                , Run Date "%I:%M%p" "date" 10
                ]
   , sepChar = "%"
   , alignSep = "}{"
   , template = "%_XMONAD_LOG_1% }{%cpu% | %date% "
   }
