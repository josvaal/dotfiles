#!/bin/bash

# Script de instalación de dependencias y configuraciones

# Actualizar el sistema antes de comenzar
echo "Actualizando el sistema..."
sudo pacman -Syu --noconfirm

# Instalar paquetes de Arch Linux
echo "Instalando paquetes de Arch Linux..."
sudo pacman -S --noconfirm \
  7zip \
  alacritty \
  amd-ucode \
  ani-cli \
  bash-completion \
  betterlockscreen \
  blueman \
  bluez \
  bluez-utils \
  brightnessctl \
  btop \
  catnap-git \
  chess-tui \
  code \
  dbeaver \
  dhcpcd \
  dialog \
  dmenu \
  docker \
  dooit \
  dosfstools \
  dunst \
  efibootmgr \
  fd \
  ffmpeg \
  flameshot \
  git \
  gnome-calculator \
  gnome-calendar \
  gnome-color-manager \
  gnome-disk-utility \
  gnome-keyring \
  gnome-text-editor \
  grub \
  gst-libav \
  gst-plugin-pipewire \
  gst-plugins-ugly \
  gvfs \
  gvfs-smb \
  htop \
  i3-wm \
  i3blocks \
  i3status \
  insomnia \
  iwd \
  jdk17-openjdk \
  jdk21-openjdk \
  jdk8-openjdk \
  lazydocker \
  lazygit \
  lib32-pipewire \
  libpulse \
  libreoffice-fresh \
  lightdm \
  lightdm-gtk-greeter \
  linux \
  linux-firmware \
  loupe \
  lowfi \
  lxappearance-gtk3 \
  nano \
  nemo \
  nemo-audio-tab \
  nemo-fileroller \
  nemo-image-converter \
  nemo-share \
  neovim \
  network-manager-applet \
  networkmanager \
  nitrogen \
  noto-fonts \
  noto-fonts-cjk \
  noto-fonts-emoji \
  noto-fonts-extra \
  ntfs-3g \
  ntp \
  nvtop \
  pacman-contrib \
  papirus-icon-theme \
  pavucontrol \
  picom \
  pipewire \
  pipewire-alsa \
  pipewire-jack \
  pipewire-pulse \
  plastic \
  polkit-gnome \
  polybar \
  pulsemixer \
  python-pip \
  qt5-graphicaleffects \
  qt5-quickcontrols2 \
  qt5-svg \
  qt6-multimedia-ffmpeg \
  qt6-svg \
  r2modman-appimage \
  relagit \
  resources \
  rofi \
  rofi-calc \
  rtkit \
  rustup \
  sddm \
  shotcut \
  smartmontools \
  smassh-bin \
  steam \
  tk \
  totem \
  ttf-jetbrains-mono \
  ttf-jetbrains-mono-nerd \
  unrar \
  unzip \
  vi \
  vim \
  vnstat \
  vulkan-radeon \
  wget \
  wireless_tools \
  wireplumber \
  xdg-utils \
  xf86-input-evdev \
  xf86-input-synaptics \
  xf86-video-amdgpu \
  xf86-video-ati \
  xorg-xinit \
  xss-lock \
  xterm

# Instalar AUR helpers (yay)
echo "Instalando yay..."
sudo pacman -S --noconfirm yay

# Instalar paquetes de AUR usando yay
echo "Instalando paquetes desde AUR..."
yay -S --noconfirm \
  catnap-git \
  lazygit \
  r2modman-appimage \
  relagit \
  smassh-bin \
  steam \
  yt-dlp \
  zed

# Configuración de dotfiles
echo "Copiando dotfiles..."

# Copiar configuraciones
cp -r .zshrc ~/
cp -r .gitconfig ~/
cp -r .config/* ~/.config/

# Asumir que ya tienes oh-my-zsh en tu sistema
# Si no, descomentar la siguiente línea para instalarlo
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "¡Instalación completada!"
