{lib, config, ...}: with lib;
let
    cfg = config.bright-bit.user.firefox;
in
{
    imports = [ ];

    options.bright-bit.user.firefox = {
        enable = mkEnableOption "Enable firefox theme";
        profile = mkOption {
            description = "Profile to activate firefox theme in";
            type = types.str;
            default = "default";
        };
    };

    config = mkIf cfg.enable {
        programs.firefox = {
            profiles."${cfg.profile}" = {
                userChrome =  builtins.readFile ./userChrome.css;
                userContent = builtins.readFile ./userContent.css;
                extraConfig = ''
                  user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
                '';
            };
        };
    };
}
