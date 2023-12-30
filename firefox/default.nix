{lib, config, ...}: with lib;
let
    cfg = config.bright-bit.user.firefox;
in
{
    imports = [ ];

    options.bright-bit.user.firefox = {
        enable = mkEnableOption "Enable firefox theme";
    };

    config = mkIf cfg.enable {
        programs.firefox = {
            profiles.default = {
                isDefault = true;
                userChrome =  builtins.readFile ./userChrome.css;
                userContent = builtins.readFile ./userContent.css;
            };
        };
    };
}
