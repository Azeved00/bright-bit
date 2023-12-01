{lib, config, ...}: with lib;
let
    cfg = config.bright-bit.firefox;
in
{
    imports = [ ];

    options.bright-bit.firefox = {
        enable = mkEnableOption "Enable firefox theme";
    };

    config = mkIf cfg.enable {
        programs.firefox = {
            enable = true;

            profiles.default = {
                isDefault = true;
                userChrome =  builtins.readFile ./userChrome.css;
                userContent = builtins.readFile ./userContent.css;
            };
        };
    };
}
