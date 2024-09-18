{ config, lib,...}:
with lib;
let
  cfg = config.bright-bit.user.prompt;
in
{
    imports = [];
    
    options.bright-bit.user.prompt = {
        enable = mkEnableOption "Enable the bash prompt module";
    };

    config = mkIf cfg.enable {
        programs.bash = {
            initExtra = builtins.readFile ./prompt.sh;

            sessionVariables = {
                PROMPT_COMMAND="make_prompt";
            }; 
        };
    };
}
