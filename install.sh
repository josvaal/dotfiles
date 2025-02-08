#!/bin/bash

# Instalar dependencias necesarias
echo "Instalando dependencias con pacman..."
sudo pacman -S --needed base-devel git

# Instalar yay (AUR helper)
if ! command -v yay &> /dev/null; then
    echo "Instalando yay..."
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi

# Instalar paquetes desde el repositorio oficial y AUR
echo "Instalando paquetes con pacman y yay..."
sudo pacman -S --needed - < pacman-packages.txt
yay -S --needed - < aur-packages.txt

# Copiar dotfiles a sus respectivas ubicaciones
echo "Copiando dotfiles..."
cp -r .zshrc ~/
cp -r .gitconfig ~/
cp -r .oh-my-zsh ~/
cp -r .config/* ~/.config/

# Configurar Oh My Zsh
if [ ! -d ~/.oh-my-zsh ]; then
    echo "Instalando Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Configurar Zsh como shell por defecto
if [ "$SHELL" != "/bin/zsh" ]; then
    echo "Cambiando la shell por defecto a Zsh..."
    chsh -s /bin/zsh
fi

echo "Instalación completada. Por favor, reinicia tu sesión para aplicar los cambios."
