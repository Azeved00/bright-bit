{lib, config, pkgs, ...}: with lib;
let
    cfg = config.bright-bit.user.tmux;
    package = pkgs.callPackage ./package.nix {};
in
{
    imports = [ ];

    options.bright-bit.user.tmux= {
        enable = mkEnableOption "Enable tmux theme";
    };

    config = mkIf cfg.enable {
        programs.tmux.plugins = [
            package
        ];
    };
}
