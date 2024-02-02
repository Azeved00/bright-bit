{pkgs, ...}:

{
    options.bright-bit.colors = with pkgs.lib; {
        non_text = mkOption {
            type = types.string;
            description = "Non text color";
            default = "919baa";
        };

        line = mkOption {
            type = types.string;
            description = "Line color";
            default = "313640";
        };

        comment = mkOption {
            type = types.string;
            description = "Comment color";
            default = "5c6370";
        };

        selection = mkOption {
            type = types.string;
            description = "Selection color";
            default = "474e5d";
        };

        black = mkOption {
            type = types.string;
            description = "Background color";
            default = "282c34";
        };

        white = mkOption {
            type = types.string;
            description = "Foreground color";
            default ="dcdfe4";
        };
        
        red = mkOption {
            type = types.string;
            description = "Red color";
            default ="e06c75";
        };

        orange = mkOption {
            type = types.string;
            description = "Orange color";
            default = "de935f";
        };

        yellow = mkOption {
            type = types.string;
            description = "Yellow color";
            default ="e5c07b";
        };

        green = mkOption {
            type = types.string;
            description = "Green color";
            default =  "98c379";
        };

        cyan = mkOption {
            type = types.string;
            description = "Cyan color";
            default = "56b6c2";
        };

        magenta = mkOption {
            type = types.string;
            description = "Magenta color";
            default = "c678dd";
        };
    };

    config = {
    };

}


