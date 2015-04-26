setxkbmap no
setxkbmap -option caps:ctrl_modifier
xsetroot -cursor_name left_ptr

sudo systemctl start pommed

daze

xrdb ~/.xresources
synclient PalmDetect=1

feh --bg-fill ~/.wallpaper.jpg

sxhkd -f 50 &
conky &
dropbox &
exec bspwm
