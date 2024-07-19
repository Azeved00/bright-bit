{lib, config, ...}: with lib;
let
    cfg = config.bright-bit.user;
in
{
    imports = [ 
        ./firefox 
        ./nvim
        ./dunst
        ./tmux
        ./alacritty
    ];

    options.bright-bit.user = {
        enable = mkEnableOption "Enable bright bit themed user applications (nvim for example)";
    };

    config = mkIf cfg.enable {
        bright-bit.user.firefox.enable = true;
        bright-bit.user.nvim.enable = true;
        bright-bit.user.dunst.enable = true;
        bright-bit.user.tmux.enable = true;
        bright-bit.user.alacritty.enable = true;
    };
}
