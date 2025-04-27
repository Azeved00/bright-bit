{lib, config, pkgs, ...}: with lib;
let
    cfg = config.bright-bit.user.nvim;
    package = import ./package.nix (pkgs);
in
{
    imports = [ ];

    options.bright-bit.user.nvim = {
        enable = mkEnableOption "Enable nvim theme";
    };

    config = mkIf (cfg.enable && config.programs.neovim.enable) {
        programs.neovim.plugins = [
            package
        ];
        
    };
}
