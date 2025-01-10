## Requirements
these are for Arch, i have no idea what people may use on other distros
```
pacman -S tree bat fzf fish ripgrep fastfetch kitty lite-xl opendoas
```
```
yay qview zed doas-sudo-shim doasedit-alternative
```
## WM and other not so needed stuff

```
pacman -S i3-wm i3blocks i3lock i3status 
```

## font (for kitty)

```
pacman -S ttf-jetbrains-mono-nerd
```

## Lite-XL (packages i use)
first id recommend getting [LPM](https://github.com/adamharrison/lite-xl-plugin-manager)
```
./lpm install base16 autosaveonfocuslost nerdicons selectionhighlight settings widget eofnewline
```

## GNU Stow
```
pacman -S stow
```
make sure the dot files are in the HOME directory
```
~ $ git clone --depth=1 https://github.com/Lusbert/dotfiles
~ $ cd dotfiles
~/dotfiles $ stow .
```
now this will make symlinks to your HOME directory
basically
when i run stow in the folder example
```
example
├── a
├── b
└── c
    └── d
```
it symlinks the directory `c` and all its files to the HOME directory
```
├── example
│   ├── a
│   ├── b
│   └── c
│       └── d
├── a -> example/a
├── b -> example/b
├── c -> example/c
│   └── d
```

