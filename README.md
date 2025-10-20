# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

1. Clone neovim setup by getting the SSH link above
2. for debian distro install curl by adding

```
sudo apt update
sudo apt install curl
sudo apt install build-essentials

// to update neovim to latest 0.11
 curl -sL https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz | sudo tar -xzf - --strip-components=1 --overwrite -C /usr
```

3. sync the neovim by using `:Lazy sync`
4. update nvim-treesitter by using `TSUpdate`
