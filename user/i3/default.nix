colors:
{config, lib,...}:
let 
    cfg = config.bright-bit.user.i3;
in
{
    options.bright-bit.user.i3 = {
        enable = lib.mkEnableOption "Enable i3 module";
    };


    config = lib.mkIf cfg.enable {
        xsession = {
            windowManager.i3 = {
                config = {
                    fonts = {
                        names = [ "pango" ];
                        style = "monospace";
                        size = 15.0;
                    };

                    gaps.inner = 10;
                    gaps.outer = 5;
                    window.border = 1;
                    window.titlebar = false;
                    floating = {
                        titlebar = false;
                        border = 1;
                    };

                    colors = {
                        urgent = {
                            background = "#900000";
                            border = "#${colors.red}";
                            childBorder = "#900000";
                            indicator = "#900000";
                            text = "#ffffff";
                        };

                        focused = {
                            background = "#285577";
                            border = "#${colors.yellow}";
                            childBorder = "#${colors.yellow}";
                            indicator = "#${colors.yellow}";
                            text = "#ffffff";
                        };

                        unfocused = {
                            background = "#222222";
                            border = "#333333";
                            childBorder = "#222222";
                            indicator = "#292d2e";
                            text = "#888888";
                        };
                                        
                        focusedInactive = {
                            background = "#5f676a";
                            border = "#333333";
                            childBorder = "#5f676a";
                            indicator = "#484e50";
                            text = "#ffffff";
                        };

                        placeholder = {
                            background = "#0c0c0c";
                            border = "#000000";
                            childBorder = "#0c0c0c";
                            indicator = "#000000";
                            text = "#ffffff";
                        };

                        background = "#${colors.black}";
                    };
                };
            };
        };
    };
}
