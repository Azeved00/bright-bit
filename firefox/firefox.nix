{lib, config, ...}: with lib;
let
    cfg = config.modules.firefox;
in
{
    imports = [];

    options = {
        enable = mkEnableOption "Enable firefox theme";
    };

    config = mkIf cfg.enable {
        
        # enable firefox

    };
}
