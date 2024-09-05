.PHONY: all install uninstall-all nvim optimus-manager sound-fix tmux vim x11 zsh

all: install

install: nvim optimus-manager sound-fix tmux vim x11 zsh

nvim:
	stow nvim

optimus-manager:
	sudo stow -t / optimus-manager

sound-fix:
	sudo stow -t / sound-fix
	sudo chmod +x /usr/lib/systemd/system-sleep/99_restart_sound

tmux:
	stow tmux

vim:
	stow vim

x11:
	stow x11

zsh:
	stow zsh

