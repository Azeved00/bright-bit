color:
{lib, config, ...}: with lib;
let
    cfg = config.bright-bit.system;
    sddm = import ./sddm color;
in
{
    imports = [ 
        sddm
    ];

    options.bright-bit.system= {
        enable = mkEnableOption "Enable bright bit themed system applications (nvim for example)";
    };

    config = mkIf cfg.enable {
        bright-bit.system.sddm.enable = true;
    };
}
