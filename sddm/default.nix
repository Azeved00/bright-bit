{lib, config, pkgs, ...}: with lib;
let
    cfg = config.bright-bit.sddm;
    sddm = pkgs.stdenvNoCC.mkDerivation {
        name = "teeny-sddm";
        version = "16-11-2023";
        dontBuild = true;
        
        src = ./.;

        nativeBuildInputs = with pkgs.libsForQt5; [
            wrapQtAppsHook
        ];

        propagatedUserEnvPkgs = with pkgs.libsForQt5; [
            qtbase
            qtsvg
            qtgraphicaleffects
            qtquickcontrols2
        ];


        installPhase = ''
            mkdir -p $out/share/sddm/themes
            cp -aR $src $out/share/sddm/themes/teeny-sddm
        '';
    };
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

        environment.systemPackages = [ sddm ];
    };
}
