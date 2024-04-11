{lib, config, pkgs, ...}: with lib;
let
    cfg = config.bright-bit.system.sddm;
    package = import ./package.nix (pkgs);

in
{
    imports = [ ];

    options.bright-bit.system.sddm = {
        enable = mkEnableOption "Enable bright-bit sddm theme";
        theme-config = mkOption {
            description = "";
            type = types.str;
            default = ''
                [General]
                customBackground="false"
                background=backgrounds/wallpaper.png

                fontFamily="DejaVuSans"
                fontSize=15

                clockEnabled="true"
                clockSize=20
                statsPanelEnabled="false"

                backgroundColor="#282c34"
                textColor="#dcdfe4"
                fieldColor="#474e5d"
                selectedColor="#e5c07b"
            '';
        };
    };

    config = mkIf cfg.enable {

        environment.systemPackages = [ 
            package
            (pkgs.writeTextFile {
                name = "sddm-user-config";
                executable = true;
                destination = "${package}/etc/share/sddm/themes/bright-bit/theme.conf.user";
                text = cfg.theme-config;
            })
        ];

        services.xserver.displayManager.sddm = {
            theme = "bright-bit";
        };
        
        #override theme conf by writting to theme.conf.user


    };
}
