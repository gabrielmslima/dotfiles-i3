## My personal i3 dotfiles

This repository contains the configuration files for my i3 setup. It is a work in progress and will be updated as I continue to tweak my setup.

# DotFiles Dependencies

- [PowerLevel10K a zsh prompt theme](https://github.com/romkatv/powerlevel10k)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [fzf](https://github.com/junegunn/fzf)
- [eza](https://github.com/eza-community/eza)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

# Installation

First Ensure you have the dependencies installed on your system.

## for fedora based distros

```
sudo dnf install git
```

```
sudo dnf install stow
```

```
sudo dnf install zsh zsh-syntax-highlighting zsh-autosuggestions zsh-completions fzf ripgrep zoxide fzf eza ripgrep
```

## for archlinux based distros

```
sudo pacman -S git
```

```
sudo pacman -S stow
```

```
sudo pacman -S zsh zsh-syntax-highlighting zsh-autosuggestions zsh-completions fzf ripgrep zoxide fzf eza ripgrep
```

Then clone the repository in your $HOME directory

```
git clone https://github.com/gabrielmslima/dotfiles-i3
```

Then cd into the repository and run the following command to symlink the configuration files to your $HOME directory

```
cd dotfiles-i3
stow .
```

If you prefer to install a specific configuration file you can run the following command

```
stow <folder_name>
```

# Screenshots

Notetaking layout
![Screenshot](imgs/notetaking-i3-gruvbox-dotfiles.png)

Coding layout
![Screenshot](imgs/terminals-i3-gruvbox-dotfiles.png)

Wallpaper
![Screenshot](imgs/wallpaper-i3-gruvbox-dotfiles.png)

Scratchpads
![Screenshot](imgs/scratchpads-i3-gruvbox-dotfiles.png)

Rofi Setup
![Screenshot](imgs/rofi-i3-gruvbox-dotfiles.png)

Exit Menu Setup
![Screenshot](imgs/exitmenu-i3-gruvbox-dotfiles.png)

