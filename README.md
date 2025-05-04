# Albert's dotfiles

Dotfiles for UNIX distros and wsl on Windows I use on my development and personal environments.

## Requirements

I use [stow gnu](https://www.gnu.org/software/stow/) for creating and managing symlinks on my dotfiles.

```
apt install stow
```

## Installation

Execute this scripts in the terminal:

```
cd $HOME
git clone https://github.com/albertllonch/dotfiles.git
cd dotfiles
```

Once on the dotfiles folder, you can choose what to install.

Copy single folder:
```
stow zsh
```

Copy all configuration:
```
stow */
```



