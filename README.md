## Description
> - This is my default neovim with config.

<br />

![Screenshot from 2023-12-23 19-11-37](https://github.com/kentlouisetonino/config-nvim/assets/69438999/7e8cfd05-8dc7-40c5-898f-2ca4ddce510f)


<br />
<br />



## Local Setup
> - Setup the git remote repositories.
```bash
# Change mode permission and make it executable.
chmod +x git-push-all

# Push changes to all remote repository.
./git-push-all
```

> - Run the following commands below.

```plaintext
cd
cd .config/nvim
touch init.vim
```

<br />

> - Copy the `init.vim` content.

<br />

> - To locate the `coc.nvim` change directory to the following below.

```plaintext
cd ~/.local/share/nvim/plugged/coc.nvim
yarn install
yarn build
```

<br />
<br />



## Basic Keyboard Commands
> - NerdTree basic commands.

```plaintext
m     : This bring up the NerdTree Filesystem menu.
a     : This allows to create a new file.
d     : This allows to delete a file.
mm    : This allows renaming a file.
t     : Open a new tab.
gt    : Switch to next tab.
gT    : Switch to previous tab.
```

<br />

> - VIM cheat sheet: https://vim.rtorr.com/

<br />

> - COC key mappings.
```plaintext
gd          : Definition.
gr          : References.
Ctrl + o    : Go back to previous file.
\ff         : Open telescope and find files.
\fg         : Open telescope and find a files with a specific word.
Ctrl + t    : After opening the telescope, then open the file in new tab.
```


