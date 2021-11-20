#!/usr/bin/env bash
#-------------------------------------------------------------------------
#   ██████╗ ██╗   ██╗ █████╗  ██████╗██╗  ██╗     ██████╗ ███████╗
#  ██╔═══██╗██║   ██║██╔══██╗██╔════╝██║ ██╔╝    ██╔═══██╗██╔════╝
#  ██║   ██║██║   ██║███████║██║     █████╔╝     ██║   ██║███████╗
#  ██║▄▄ ██║██║   ██║██╔══██║██║     ██╔═██╗     ██║   ██║╚════██║
#  ╚██████╔╝╚██████╔╝██║  ██║╚██████╗██║  ██╗    ╚██████╔╝███████║
#   ╚══▀▀═╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝     ╚═════╝ ╚══════╝ 
#-------------------------------------------------------------------------

echo -e "\nINSTALLING AUR SOFTWARE\n"
# You can solve users running this script as root with this and then doing the same for the next for statement. However I will leave this up to you.

echo "CLONING: YAY"
cd ~
git clone "https://aur.archlinux.org/yay.git"
cd ${HOME}/yay
makepkg -si --noconfirm

PKGS=(
'autojump'
'awesome-terminal-fonts'
'firefox'
'find-the-command'
'dxvk-bin' # DXVK DirectX to Vulcan
'github-desktop-bin' # Github Desktop sync
'heroic-games-launcher-bin'
'lightly-git'
'lightlyshaders-git'
'element-desktop'
'mangohud' # Gaming FPS Counter
'mangohud-common'
'noto-fonts-emoji'
'papirus-icon-theme'
'plasma-pa'
'proton-ge-custom-bin'
'protontricks-git'
'ocs-url' # install packages from websites
'sddm-nordic-theme-git'
'snapper-gui-git'
'steam-native-runtime'
'steamtinkerlaunch'
'starship'
'tela-icon-theme'
'inverse-icon-theme-git'
'ttf-dejavu'
'ttf-fantasque-sans-mono'
'ttf-fira-code'
'ttf-fira-sans'
'ttf-inconsolata'
'ttf-liberation'
'ttf-opensans'
'ttf-droid'
'ttf-hack'
'ttf-meslo' # Nerdfont package
'ttf-roboto'
'snap-pac'
'ungoogled-chromium'
'yuzu-mainline-git'
'yakuake'
)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

export PATH=$PATH:~/.local/bin
cp -r $HOME/ArchTitus/dotfiles/* $HOME/
pip install konsave
konsave -i $HOME/ArchTitus/quackos.knsv
sleep 1
konsave -a quackos

echo -e "\nDone!\n"
exit
