# magican's dotfiles

## Contents

- `brew` dependencies including: applications, fonts, etc. See [`Brewfile`](https://github.com/magican/dotfiles/blob/master/Brewfile)
- `macOS` configuration. See [`macos`](https://github.com/magican/dotfiles/blob/master/macos)
- `shell` configuration. See [`shell/`](https://github.com/magican/dotfiles/tree/master/shell) and [`config/zshrc`](https://github.com/magican/dotfiles/blob/master/config/zshrc)
- `vscode` configuration. See [`vscode`](https://github.com/magican/dotfiles/blob/master/vscode)


## Installation

We are using [`dotbot`](https://github.com/anishathalye/dotbot/)
to set things up. Steps:

1. Clone this repo
2. `cd` into `dotfiles/` folder
3. Run: `./install`


## CLI

[`hyper`](https://hyper.is/)
and default `Terminal App` as terminal emulators.

`zsh` with [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh)
as a main shell.

[`antibody`](https://github.com/getantibody/antibody) to manage shell plugins.

## Apps

`brew` to install all free apps and sync apps from AppStore.
`pip` for python apps
The resulting [`Brewfile`](https://github.com/magican/dotfiles/blob/master/Brewfile) contains everything to start with.

All other "heavy" staff I usually run dockerized or install separately, e.g. GDAL, QGIS, OSGEO, keras, pytorch, mlflow and so on
 
## Infrastructure

I try to containerize everything.
So `docker` is my main development and deployment tool.
You can install it from its [official site](https://docs.docker.com/docker-for-mac/) (`brew` [version](https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker.rb) is also an option).

I prefer to use `edge` version of `docker`.
One would have to download it manually.

I prefer not to use databases and other services locally, one would prefer to
 dockerize them.


## VS Code

I love my `PyCharm`. But more coding brings me to a further on state when
 I have switched to use both `vscode` and `PyCharm`.
One could look at the `vscode` setup.

Here's [a list of packages](https://github.com/magican/dotfiles/blob/master/vscode/install.sh) I use:

- [`ayu`](https://github.com/ayu-theme/vscode-ayu) theme with modifications and `A File Icon` icons
- [`Python`](https://github.com/Microsoft/vscode-python) plugin
- `editorconfig` integration
- [powered-up `vim`](https://github.com/magican/dotfiles/blob/master/config/vimrc)
for in-terminal editing.


## Local configuration

Some of the used tools requires local configuration. Such as `git` with username and email.

NB! `gpgsign` is off in `gitconfig` by default.

```
[commit]
  gpgsign = false
```

Full list of configs is availavle in:

1. `~/.gitconfig_local` to store any user-specific data
2. `~/.shell_env_local` to store local shell config, like: usernames, passwords, tokens, `gpg` keys and so on


## License

[WTFPL](https://en.wikipedia.org/wiki/WTFPL): DO WHAT THE FUCK YOU WANT, but enjoy!
