{lib, config, pkgs, ...}: with lib;
let
    cfg = config.bright-bit.sddm;
    package = import ./package.nix (pkgs);
in
{
    imports = [ ];

    options.bright-bit.sddm = {
        enable = mkEnableOption "Enable bright-bit sddm theme";
    };

    config = mkIf cfg.enable {
        services.xserver.displayManager.sddm = {
            enable = true;
            theme = "bright-bit";
        };

        environment.systemPackages = [ package ];
    };
}
