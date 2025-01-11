setxkbmap -layout gb

# Execute the following command from terminal where
#     XXX is the keycode obtained by xev
#     YYY is the key name obtained by xev
# xmodmap -e "keycode XXX = YYYY"

# remappings for Keychron K2 ISO UK with keycaps UK
xmodmap -e "keycode 105 = Menu"

# remappings for Keychron K2 ISO UK with keycaps US
#xmodmap -e "keycode 94 = Menu"
#xmodmap -e "keycode 112 = Home"
#xmodmap -e "keycode 117 = End"
#xmodmap -e "keycode 110 = Prior"
#xmodmap -e "keycode 115 = Next"

# save to system for next sessions
xmodmap -pke >~/.Xmodmap
