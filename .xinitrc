/usr/bin/VBoxClient-all

setxkbmap no
setxkbmap -option caps:ctrl_modifier
xsetroot -cursor_name left_ptr

sudo systemctl start pommed

daze

xrdb ~/.Xresources
synclient PalmDetect=1

feh --bg-fill ~/wallpaper.jpg

sxhkd -f 50 &
# urxvt &
conky &
dropbox &
exec bspwm
