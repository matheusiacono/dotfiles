# vim:fileencoding=utf-8:foldmethod=marker

#: tmux {{{

if [[ ! -d "$HOME/.tmux" ]]
then
	mkdir $HOME/.tmux
	git clone --depth 1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

ln -sfh $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf
ln -sfh $HOME/.dotfiles/tmux/yank.sh $HOME/.tmux/yank.sh

~/.tmux/plugins/tpm/bin/install_plugins

#: }}}

#: zsh {{{

if [[ ! -d "$HOME/.oh-my-zsh" ]]
then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	git clone --depth 1 https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
fi

ln -sfh $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc
ln -sfh $HOME/.dotfiles/zsh/zshenv $HOME/.zshenv

#: }}}

#: kitty {{{

if [[ ! -d "$HOME/.config/kitty" ]]
then
	mkdir $HOME/.kitty
	git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
	ln -sfh ~/.config/kitty/kitty-themes/themes/Tomorrow_Night_Blue.conf ~/.config/kitty/theme.conf
fi

ln -sfh ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

#: }}}