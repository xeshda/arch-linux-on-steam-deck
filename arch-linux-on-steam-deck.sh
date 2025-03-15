# volume buttons
sudo pacman -S xbindkeys

echo '# xbindkeys -k to find value

# Increase volume
"pactl set-sink-volume @DEFAULT_SINK@ +1000"
   XF86AudioRaiseVolume

# Decrease volume
"pactl set-sink-volume @DEFAULT_SINK@ -1000"
   XF86AudioLowerVolume

# Mute volume
"pactl set-sink-mute @DEFAULT_SINK@ toggle"
   XF86AudioMute

# Mute microphone
"pactl set-source-mute @DEFAULT_SOURCE@ toggle"
   XF86AudioMicMute

# Audio previous
"playerctl previous"
	XF86AudioPrev

# Audio play
"playerctl play-pause"
	XF86AudioPlay

# Audio next
"playerctl next"
	XF86AudioNext' >> ~/.xbindkeysrc

xbindkeys

# touchscreen
sudo pacman -S xf86-input-evdev
xinput --map-to-output 'pointer:FTS3528:00 2808:1015' eDP-1

# arandr xrandr for screen rotating
sudo pacman xrandr
xrandr --output eDP-1 --mode 800x1280 --pos 0x280 --rotate right
xrandr -o right

# firmware update
sudo pacman -S fwupd
fwupdmgr refresh; fwupdmgr get-updates
fwupdmgr update

# audio
sudo pacman -S pipewire wireplumber pipewire-audio pipewire-alsa pipewire-pulse pavucontrol
# fix audio OLED audio crackling in wine 
echo "default.clock.min-quantum = 256" >> ~/.config/pipewire

# install yay
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

# installing controller drivers
yay -S game-devices-udev

# install flatpak
sudo pacman -S flatpak

# install steam through flatpak
flatpak install app/com.valvesoftware.Steam/x86_64/stable
