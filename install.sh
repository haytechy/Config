#Install font
sudo mkdir /usr/share/fonts/JetBrainsMono
sudo curl -L  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip -o /usr/share/fonts/JetBrainsMono.zip
sudo unzip /usr/share/fonts/JetBrainsMono.zip -d /usr/share/fonts/JetBrainsMono/

#Install Kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
mkdir ~/.local/bin
mkdir ~/.local/share/applications
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
cp kitty.conf ~/.config/kitty/kitty.conf

#Install zsh and p10k
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh

#Configure TMUX
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf

#Configure Neovim
git clone https://github.com/alexhayman/nvim.git ~/.config/nvim
curl -L https://github.com/neovim/neovim/releases/download/v0.11.1/nvim-linux-x86_64.appimage -o ~/Downloads/nvim.appimage
chmod u+x ~/Downloads/nvim.appimage
sudo mv ~/Downloads/nvim.appimage /usr/bin/nvim

#Configure Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

#Install Dependencies
sudo apt install xclip
sudo apt install fzf
