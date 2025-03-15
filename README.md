# Arch Linux on Steam Deck
A bash script for people who want to escape SteamOS on their Steam Deck **and** for people who choose **__not__** to use a **Desktop Environment** but want to reap the benefits of a portable Linux system.

I highly recommend to take a look at the [**Arch wiki: Steam Deck**](https://wiki.archlinux.org/title/Steam_Deck) yourself, as most of the commands here just automate that wiki.

I want to make clear that this is **NOT MEANT TO BE RAN MORE THAN ONCE**, and I'm not responsible for your annoyance as I clearly warned you not to do, mkay?
# What is it doing?
- installs and configures `xbindkeys` to get the volume keys on the Steam Deck to work
- touchscreen support via `xinput`
- install `xrandr` so that you can **fix the screen rotation.**
- install **[firmware updates](https://wiki.archlinux.org/title/Steam_Deck#Firmware)**
- installing en enabling **[pulseaudio](https://wiki.archlinux.org/title/PulseAudio)**
- install **[yay](https://github.com/Jguer/yay)**
- making the Steam Deck controls usable by installing [game-devices-udev **(AUR)**](https://aur.archlinux.org/packages/game-devices-udev) via `yay`
- installing **Flatpak**
- installing **[Steam (flatpak)](https://flathub.org/apps/com.valvesoftware.Steam)**

# What else?
`xbindkeys`, `xinput` and `xrandr` require to be ran by start, so I recommend making your own autorun script or adding it to your **Window Manager's** config file:
```bash
# volume buttons
xbindkeys

# touchscreen
xinput --map-to-output 'pointer:FTS3528:00 2808:1015' eDP-1

# fix screen rotation
xrandr -o right

# autostart steam
steam
```

I also want to add that this script does **NOT** include an **On-Screen Keyboard** as it includes Steam, and Steam has that integraded. Just know that if you can't login into Steam, you also won't have access to this feature. If you do want an external On-screen Keyboard program, check out [this list provided by the Arch Wiki](https://wiki.archlinux.org/title/List_of_applications/Utilities#On-screen_keyboards)
