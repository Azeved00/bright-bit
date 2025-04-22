colors: 
{lib, config, ...}: with lib;
let
    cfg = config.bright-bit.user.dunst;
in
{
    imports = [ ];

    options.bright-bit.user.dunst = {
        enable = mkEnableOption "Enable dunst bright-bit theme";
    };

    config = mkIf (cfg.enable && config.services.dunst.settings) {
        services.dunst.settings = {
            global = {
                monitor = 0;
                follow = "none";
                width = 300;
                height = 300;
                origin = "top-right";
                offset = "30x40";
                scale = 0;
                notification_limit = 5;

                progress_bar = true;
                progress_bar_height = 10;
                progress_bar_frame_width = 1;
                progress_bar_min_width = 150;

                indicate_hidde = "yes";
                transparency = 16;
                separator_height = 2;
                padding = 8;
                horizontal_padding = 8;
                text_icon_padding = 0;

                frame_width = 1;
                frame_color = "#${colors.yellow}";
                separator_color = "auto";
                sort = "yes";
                idle_treshold = 0;

                font ="Noto Sans Regular 9";
                line_height = 0;

                markup = "full";
                format = "<b>%s</b>\n%b";
                alignment = "center";
                vertical_alignment = "center";
                show_age_treshold = 60;
                ellipsize = "middle";
                ignore_newline = "no";
                stack_duplicates = true;
                hide_duplicate_count = true;
                show_indicators = "yes";
                
                icon_position = "left";
                min_icon_size = 0;
                max_icon_size = 32;
                icon_path ="/usr/share/icons/Qogir/16/status:/usr/share/icons/Qogir/16/devices/:/usr/share/icons/Qogir/16/apps/:/usr/share/pixmaps/";

                sticky_history = false;
                history_length = 0;
                #dmenu
                broswer = "/usr/bin/xdg-open";
                always_run_script = true;
                title = "Dunst";
                class = "dunst";
                corner_radius = 7;
                ignore_dbusclose = false;
                force_xwayland = false;
                force_xinerama = false;
                mouse_left_click = "close_current";
                mouse_middle_click = "do_action, close_current";
                mouse_right_click = "close_all";
            };

            experimental = {
                per_monitor_dpit = false;
            };
            urgency_low = {
                background = "#${colors.black}";
                foreground = "#${colors.white}";
                timeout = 5;
            };
            urgency_normal = {
                background = "#${colors.black}";
                foreground = "#${colors.white}";
                timeout = 5;
            };
            urgency_critical = {
                background = "#${colors.black}";
                foreground = "#${colors.white}";
                frame_color = "#${colors.red}";
                timeout = 120;
            };
            stack-volumes = {
                appname = "some_volume_notiviers";
                set_stack_tag = "volume";
            };

        };
    };
}
