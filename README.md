# zsh-extras

## pacman

The following pacman helper functions are included:

| File                                          | Usage                     | Mnemonic                                        | Description                                         |
| --------------------------------------------- | ------------------------- | ----------------------------------------------- | --------------------------------------------------- |
| [`_pacman_extras`](/functions/_pacman_extras) |                           |                                                 | Provides completions for the other pacman functions |
| [`pacopen`](/functions/pacopen)               | `pacopen <package>`       | _**pac**man **open**_                           | Open the URL associated with `<package>`            |
| [`pqlm`](/functions/pqlm)                     | `pqlm <package>..`        | _**p**acman **q**uery **l**ist **m**anpages_    | List man pages owned by `<package>..`               |
| [`pqlmg`](/functions/pqlmg)                   | `pqlmg <pat> <package>..` | _**pqlm** **g**rep_                             | Search inside all man pages owned by `<package>..`  |
| [`pqlx`](/functions/pqlx)                     | `pqlx <package>..`        | _**p**acman **q**uery **l**ist e**x**ecutables_ | List executable files owned by `<package>..`        |
| [`pqoc`](/functions/pqoc)                     | `pqoc <command>..`        | _**p**acman **q**uery **o**wner of **c**ommand_ | Show the package that owns `<command>..`            |

## vim-help

https://user-images.githubusercontent.com/21299126/115955030-142f3b00-a4a9-11eb-9595-4d940e7f2adf.mp4

The [`vim-help`](/functions/vim-help) and [`nvim-help`](/functions/nvim-help)
zsh functions launch {,neo}vim directly from the shell into the help view for the given help tags, one per tab.

The [`_vim-help`](/functions/_vim-help) file adds completions for the {,n}vim-help
functions for all vim help tags found on your system.

As a Neovim user, I also like to alias `nvim-help` to `vh`:

```zsh
alias vh=nvim-help
```

## Installation

To install, place the desired scripts inside a directory in your `fpath`, for example `/usr/share/zsh/site-functions/`.
See [zshall(1) FUNCTIONS](https://man.archlinux.org/man/zshall.1#AUTOLOADING_FUNCTIONS) for more information.

## License

&copy; 2021 Maddison Hellstrom

MIT License
