# zsh-extras

## general

The following general helper functions are included:

| File                  | Usage      | Mnemonic           | Description                                                                                                       |
| --------------------- | ---------- | ------------------ | ----------------------------------------------------------------------------------------------------------------- |
| [`mg`](/functions/mg) | `mg <pat>` | _**m**an **g**rep_ | Search inside of all manpages found in your `MANPATH` (requires [ripgrep](https://github.com/BurntSushi/ripgrep)) |

## pacman

The following pacman-related helper functions are included:

| File                                          | Usage                     | Mnemonic                                        | Description                                         |
| --------------------------------------------- | ------------------------- | ----------------------------------------------- | --------------------------------------------------- |
| [`pacopen`](/functions/pacopen)               | `pacopen <package>`       | _**pac**man **open**_                           | Open the URL associated with `<package>`            |
| [`pqlm`](/functions/pqlm)                     | `pqlm <package>..`        | _**p**acman **q**uery **l**ist **m**anpages_    | List man pages owned by `<package>..`               |
| [`pqlmg`](/functions/pqlmg)                   | `pqlmg <pat> <package>..` | _**pqlm** **g**rep_                             | Search inside all man pages owned by `<package>..`  |
| [`pqlx`](/functions/pqlx)                     | `pqlx <package>..`        | _**p**acman **q**uery **l**ist e**x**ecutables_ | List executable files owned by `<package>..`        |
| [`pqoc`](/functions/pqoc)                     | `pqoc <command>..`        | _**p**acman **q**uery **o**wner of **c**ommand_ | Show the package that owns `<command>..`            |
| [`_pacman_extras`](/functions/_pacman_extras) |                           |                                                 | Provides completions for the other pacman functions |

## vim-help

https://user-images.githubusercontent.com/21299126/115955030-142f3b00-a4a9-11eb-9595-4d940e7f2adf.mp4

The following vim-related helper functions are included:

| File                                | Usage                  | Description                                             |
| ----------------------------------- | ---------------------- | ------------------------------------------------------- |
| [`vim-help`](/functions/vim-help)   | `vim-help <helptag>..` | Open the vim help tag (like running `:h <tag>`) in vim. |
| [`_vim_help`](/functions/_vim_help) |                        | Provides completions for the other vim functions        |

The [`vim-help`](/functions/vim-help) and [`nvim-help`](/functions/nvim-help)
zsh functions launch {,neo}vim directly from the shell into the help view for
the given help tags, one per tab.

The [`_vim-help`](/functions/_vim-help) file adds completions for the
{,n}vim-help functions for all vim help tags found on your system.

As a Neovim user, I also like to alias `nvim-help` to `vh`:

```zsh
alias vh=nvim-help
```

## Installation

### antigen

```zsh
antigen bundle 'b0o/zsh-extras'
```

### zinit

```zsh
zinit ice wait'0b' lucid # Optional: enable lazy loading
zinit light 'b0o/zsh-extras'
```

### zplug

```zsh
zplug 'b0o/zsh-extras'
```

#### oh-my-zsh

Clone the repository inside your oh-my-zsh repo:

```
$ git clone https://github.com/b0o/zsh-extras "${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-extras"
```

Enable it in your `zshrc` by adding it to your plugin list and reloading the completion:

```zsh
plugins=(… 'zsh-extras')
autoload -U compinit && compinit
```

### Manual installation

Clone the repository:

```
$ git clone git://github.com/b0o/zsh-extras.git
```

Include the directory in your `$fpath`, for example by adding in `zshrc`:

```zsh
fpath=('path/to/zsh-extras/functions' "${fpath[@]}")
```

You may have to force rebuild `zcompdump`:

```
$ rm -f ~/.zcompdump; compinit
```

If you only want to install a subset of scripts, please note that some scripts
depend on others.

## License

&copy; 2021 Maddison Hellstrom

MIT License
