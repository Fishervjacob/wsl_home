# WSL home directory

There are many WSL home directories out there but this one is mine.

## Installing WSL2 Ubuntu
- [WSL install](https://learn.microsoft.com/en-us/windows/wsl/install)

## Installing NVIM
- [GCC install](https://linuxize.com/post/how-to-install-gcc-on-ubuntu-20-04/) - Get the build essentials installed for Ubuntu
> sudo apt update

> sudo apt install build-essential
- [ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation) - Fancy grepping tool used in conjuction with NVIM plugins.
- [nvim install](https://github.com/neovim/neovim/blob/master/INSTALL.md) - Actual install instructions for NVIM

## Installing TMUX
- Install libevent. Found in libevent-dev:
> sudo apt install libevent-dev
- Byacc was required when I went to compile it, install that too:
> sudo apt install byacc
- Install ncurses. Found in libncurses-dev:
> sudo apt install libncurses-dev
- [Actual install instructions](https://github.com/tmux/tmux/wiki/Installing)

## Misc notes
- [Where do things get installed to](https://askubuntu.com/questions/408784/after-doing-a-sudo-apt-get-install-app-where-does-the-application-get-stored) - dpkg -L \<packagename\>
