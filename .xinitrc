xsetroot -cursor_name left_ptr

# sudo systemctl start pommed

daze
applyUSBKeyboardConfigIfConnected

xrdb ~/.xresources/base16-ashes.dark
# synclient PalmDetect=1


sudo sysctl -p

setHDSpindown 36 &
randomizeWallpaper
numlockx on

sxhkd -f 50 &
dropbox &
exec bspwm
