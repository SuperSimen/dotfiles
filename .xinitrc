xsetroot -cursor_name left_ptr

daze
applyUSBKeyboardConfigIfConnected

xrdb ~/dotfiles/.xresources/gruvbox.dark

sudo sysctl -p

setHDSpindown 36 &
randomizeWallpaper
numlockx on

sxhkd -f 50 &
dropbox &
exec bspwm
