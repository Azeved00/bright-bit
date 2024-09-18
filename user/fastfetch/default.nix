{ config, lib,...}:
let 
    cfg = config.bright-bit.user.fastfetch;
in
{
    options.bright-bit.user.fastfetch = {
        enable = lib.mkEnableOption "Enable fastfetch module";
    };


    config = lib.mkIf cfg.enable  {
        programs.fastfetch = {
            enable = true;
            settings = builtins.fromJSON (builtins.readFile ./config.jsonc);
        };
        xdg.configFile."fastfetch_image" = {
            enable = true;
            executable = false;
            text = builtins.readFile ./image.txt;
            target = "fastfetch/image.txt";
        };
    };
}
