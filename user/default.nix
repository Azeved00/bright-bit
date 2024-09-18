colors:
{lib, config, ...}: with lib;
let
    cfg = config.bright-bit.user;

    dunst = import ./dunst colors;
    alacritty = import ./alacritty colors;
    rofi = import ./rofi colors;
in
{
    imports = [ 
        ./firefox 
        ./nvim
        ./tmux
        ./lf
        ./fastfetch
        ./prompt

        alacritty
        dunst
        rofi
    ];

    options.bright-bit.user = {
        enable = mkEnableOption "Enable bright bit themed user applications (nvim for example)";
    };

    config = mkIf cfg.enable {
        bright-bit.user.firefox.enable = true;
        bright-bit.user.rofi.enable = true;
        bright-bit.user.prompt.enable = true;
        bright-bit.user.fastfetch.enable = true;
        bright-bit.user.lf.enable = true;
        bright-bit.user.nvim.enable = true;
        bright-bit.user.dunst.enable = true;
        bright-bit.user.tmux.enable = true;
        bright-bit.user.alacritty.enable = true;
    };
}
