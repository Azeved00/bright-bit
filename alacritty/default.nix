colors:
{config, lib, ...}:
let 
    cfg = config.bright-bit.user.alacritty;
in
{
    options.bright-bit.user.alacritty = {
        enable = lib.mkEnableOption "Enable Alacritty module";
    };

    config = lib.mkIf cfg.enable {
        programs.alacritty = {
            enable = true;
            
            settings = {
                window = {
                    decorations_theme_variant = "Dark";
                };

                colors = {
                    primary = {
                        background = "0x${colors.black}";
                        foreground = "0x${colors.white}";
                    };
                    cursor = {
                        text    ="0x${colors.white}";
                        cursor  ="0x${colors.white}";
                    };
                    normal = {
                        black   ="0x${colors.black}";
                        red     ="0x${colors.red}";
                        green   ="0x${colors.green}";
                        yellow  ="0x${colors.yellow}";
                        blue    ="0x${colors.blue}";
                        magenta ="0x${colors.magenta}";
                        cyan    ="0x${colors.cyan}";
                        white   ="0x${colors.white}";
                    };
                    bright = {
                        black   ="0x${colors.black}";
                        red     ="0x${colors.red}";
                        green   ="0x${colors.green}";
                        yellow  ="0x${colors.yellow}";
                        blue    ="0x${colors.blue}";
                        magenta ="0x${colors.magenta}";
                        cyan    ="0x${colors.cyan}";
                        white   ="0x${colors.white}";
                    };
                    draw_bold_text_with_bright_colors = true;
                };
            };
        };
    };
}
