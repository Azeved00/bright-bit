{lib, config, pkgs, ...}: with lib;
let
    cfg = config.bright-bit.system.sddm;
    package = import ./package.nix (pkgs);
in
{
    imports = [ ];

    options.bright-bit.system.sddm = {
        enable = mkEnableOption "Enable bright-bit sddm theme";
    };

    config = mkIf cfg.enable {
        services.xserver.displayManager.sddm = {
            theme = "bright-bit";
        };

        environment.systemPackages = [ package ];
    };
}
