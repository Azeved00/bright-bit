# Bright Bit theme.
In this you can see both the colors module and the neovim plugin being used.

Highly based on the [onehalf theme](https://github.com/sonph/onehalf), 
some of the colors from one half dark are used, but with custom themes for each application,
like neovim for example.

the colorscheme:
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


This theme is made with [nix enviroment](https://nixos.org/) in mind,
as such you can use the [flake](./flake.nix) in your system config.

## Themed applications:

- [Sddm](./system/sddm/)
- [Neovim](./user/neovim/)
- [Firefox](./user/firefox/)
- [Dunst](./user/dunst)
- [Tmux](./user/tmux)

## How to use:
### Non nix version
Checkout the `readmes` for each aplication/plugin (see list above).

### Nix version
Include the modules (`nixosModules.default`, `homemanagerModules.default` or a specific module) and
then enable as needed.


#### Nix Options
bright-bit
- system (needs nixosModule)
    - enable
    - sddm
        - enable
        - theme-config
- user (needs homemanagerModule)
    - enable
    - firefox
        - enable
        - profile
    - nvim
        - enable
    - dunst
        - enable
    - tmux
        - enable
    - alacrit~
        - enable
    - ~~lf~~
    - ~~rofi~~
		
Striketrough options are not implemented.

You can use as `bright-bit.user.firefox.enable = true`.
