# zsh-extras

## vim-help

https://user-images.githubusercontent.com/21299126/115955030-142f3b00-a4a9-11eb-9595-4d940e7f2adf.mp4

The [`vim-help`](/b0o/zsh-extras/blob/main/functions/vim-help) and [`nvim-help`](/b0o/zsh-extras/blob/main/functions/nvim-help) 
zsh functions launch {,neo}vim directly from the shell into the help view for the given help tags, one per tab.

The [`_vim-help`](/b0o/zsh-extras/blob/main/functions/_vim-help) file adds completions for the {,n}vim-help 
functions for all vim help tags found on your system.

To install, place all three scripts inside a directory in your `fpath`, for example `/usr/share/zsh/site-functions/`.
See [zshall(1) FUNCTIONS](https://man.archlinux.org/man/zshall.1#AUTOLOADING_FUNCTIONS) for more information.

As a Neovim user, I also like to alias `nvim-help` to `vh`: 

```zsh
alias vh=nvim-help
```

## License

&copy; 2021 Maddison Hellstrom

MIT License
