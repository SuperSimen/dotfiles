xsetroot -cursor_name left_ptr

# sudo systemctl start pommed

daze
applyUSBKeyboardConfigIfConnected

xrdb ~/.xresources
# synclient PalmDetect=1

# sudo mount /dev/sda2 /mnt/osx

feh --randomize --bg-fill ~/Dropbox/wallpaper/
#feh --bg-fill ~/Dropbox/wallpaper/$(ls ~/Dropbox/wallpaper/| sort -R | tail -n 1)
#numlockx on

sxhkd -f 50 &
conky &
dropbox &
exec bspwm
