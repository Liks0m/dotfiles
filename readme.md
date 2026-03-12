# How to use my dotfiles
This is a small guide of how to use my dotfiles.
I use a dotfile manager called chezmoi.

## intializing my dotfiles using ssh 

```Bash
chezmoi init --apply git@github.com:$GITHUB_USERNAME/dotfiles.git
```

### Other useful commands are:

Check what changes that chezmoi will make to your home directory by running:

```Bash
chezmoi diff
```

If you are happy with the changes that chezmoi will make then run:

```Bash
chezmoi apply -v

```

If you are not happy with the changes to a file then either edit it with:

```Bash
chezmoi edit $FILE
```

Or, invoke a merge tool (by default vimdiff) to merge changes between the current contents of the file, the file in your working copy, and the computed contents of the file:

```Bash
chezmoi merge $FILE
```

On any machine, you can pull and apply the latest changes from your repo with:

```Bash
chezmoi update -v
```

### Links:
[chezmoi docs](https://www.chezmoi.io/)
