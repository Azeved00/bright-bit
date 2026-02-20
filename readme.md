# Bright Bit theme

A theme that focuses on bold bright colors with a specific focus on yellow.
The colors themselves are from [Sonph's onehalf dark theme](https://github.com/sonph/onehalf),
but custom themes are applied to most aplications



## The colors
```
00  normal  black       #303030
01  normal  line        #3D3E3E
02  normal  selection   #5C5D5E
03  normal  comments    #88898B
04  normal  non_text    #C0C1C4
05  normal  white       #DFE2E6

06  normal  red         #e06c75
07  normal  green       #98c379
08  normal  orange      #de935f
09  normal  yellow      #e5c07b
10  normal  blue        #61afef
11  normal  magenta     #c678dd
12  normal  cyan        #56b6c2
```
visualized:
![color pallet visualized](./screenshots/colors.png)

## Themed applications:

- [Sddm](./system/sddm/)
- [Neovim](./user/neovim/)
- [Firefox](./user/firefox/)
- [Dunst](./user/dunst)
- [Tmux](./user/tmux)
- [Lf](./user/lf)
- [FastFetch](./user/fastfetch)
- [Rofi](./user/rofi)

## How to use:

This theme is made with [nix enviroment](https://nixos.org/) in mind,
as such you can import the [flake file](./flake.nix) in your system inputs, and then,
include the modules (`nixosModules.default` and `homemanagerModules.default`
for full inclusion or a specific module like `homemanagerModules.nvim`) 
and then enable the modules as needed.

For a more in-depth look into how to use flakes check 
[the official documentation](https://nixos.wiki/wiki/flakes).

To use these applications without nix you can checkout
the `readme`s for each aplication/plugin (see list above).

### Nix Options

For simplicity a full list of nix options is provided here

- system (needs nixosModule)
    - enable -> enables theming for all of the system applications (ssdm)
    - sddm
        - enable
        - theme-config -> configure sddm theme (such as font)
- user (needs homemanagerModule)
    - enable -> enables theming for all of the  user applications (firefox, nvim, etc)
    - firefox
        - enable
        - profile -> the profile for which theming is enabled (defaults to `default`)
    - nvim
        - enable
    - dunst
        - enable
    - tmux
        - enable
    - alacrity
        - enable
    - lf
        - enable
    - fastfetch
        - enable
    - prompt
        - enable
    - rofi
        - enable
		
Striketroughed options are yet to implemented.
