{config, lib, ...}:
let 
    cfg = config.bright-bit.user.lf;
in
{
    options.bright-bit.user.lf= {
        enable = lib.mkEnableOption "Enable LF module";
    };

    config = lib.mkIf cfg.enable {
        xdg.configFile."lf/icons".source = ./icons;
        xdg.configFile."lf/colors".source = ./colors;
    };
}
