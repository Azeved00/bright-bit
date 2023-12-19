{pkgs, ...}:

pkgs.stdenvNoCC.mkDerivation {
        name = "bright-bit-sddm";
        version = "19-12-2023";
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
}
