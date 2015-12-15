xsetroot -cursor_name left_ptr

# sudo systemctl start pommed

daze
applyUSBKeyboardConfigIfConnected

xrdb ~/.xresources/base16-ashes.dark
# synclient PalmDetect=1

# sudo mount /dev/sda2 /mnt/osx

randomizeWallpaper
#numlockx on

sxhkd -f 50 &
conky &
dropbox &
exec bspwm
