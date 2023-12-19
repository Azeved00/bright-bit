{lib, config, ...}: with lib;
let
    cfg = config.bright-bit;
in
{
    imports = [ 
        ./firefox 
        ./sddm
        ./nvim
    ];

    options.bright-bit = {
        enable = mkEnableOption "Enable all bright bit themed applications";
    };

    config = mkIf cfg.enable {

    };
}
