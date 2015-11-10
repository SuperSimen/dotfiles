xsetroot -cursor_name left_ptr

sudo systemctl start pommed

daze
applyUSBKeyboardConfigIfConnected

xrdb ~/.xresources
synclient PalmDetect=1

sudo mount /dev/sda2 /mnt/osx

feh --randomize --bg-fill ~/Dropbox/wallpaper/

sxhkd -f 50 &
conky &
dropbox &
exec bspwm
