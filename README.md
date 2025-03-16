# Arch Linux on Steam Deck
A bash script for people who want to escape SteamOS on their Steam Deck **and** for people who choose **__not__** to use a **Desktop Environment** but want to reap the benefits of a portable Linux system (as much as possible anyway.)

I highly recommend to take a look at the [**Arch wiki: Steam Deck**](https://wiki.archlinux.org/title/Steam_Deck) yourself, as most of the commands here just automate that wiki.

# How do I run this?
Run this in your terminal after reading what it does and if you want the programs included.
```sh
curl https://raw.githubusercontent.com/xeshda/arch-linux-on-steam-deck/refs/heads/main/arch-linux-on-steam-deck.sh | sh
```

_I'm not responsible for anything that happens, I am not a professional programmer, I just enjoy using Linux. I went through the trouble of installing Arch on my Steam Deck and I'm just trying to facilitate the process for people who'd like to do the same. So don't be mad at me if it creates more issues than it resolves, mkay?
_# What is it doing?
- installs and configures `xbindkeys` to get the volume keys on the Steam Deck to work
- touchscreen support via `xinput`
- install `xrandr` so that you can **fix the screen rotation.**
- install **[firmware updates](https://wiki.archlinux.org/title/Steam_Deck#Firmware)**
- installing en enabling **[pulseaudio](https://wiki.archlinux.org/title/PulseAudio)**
- install **[yay](https://github.com/Jguer/yay)**
- making the Steam Deck controls usable by installing [**game-devices-udev (AUR)**](https://aur.archlinux.org/packages/game-devices-udev) via **[yay](https://github.com/Jguer/yay)**
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
