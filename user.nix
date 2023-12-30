{lib, config, ...}: with lib;
let
    cfg = config.bright-bit.user;
in
{
    imports = [ 
        ./firefox 
        ./nvim
    ];

    options.bright-bit.user = {
        enable = mkEnableOption "Enable bright bit themed user applications (nvim for example)";
    };

    config = mkIf cfg.enable {
        bright-bit.user.firefox.enable = true;
        bright-bit.user.nvim.enable = true;
    };
}
