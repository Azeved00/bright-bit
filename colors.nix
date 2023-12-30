{lib, ...}:
{
    options.bright-bit.colors = {
        non_text = lib.mkOption {
            type = lib.types.string;
            description = "Non text color";
            default = "919baa";
        };

        line = lib.mkOption {
            type = lib.types.string;
            description = "Line color";
            default = "313640";
        };

        comment = lib.mkOption {
            type = lib.types.string;
            description = "Comment color";
            default = "5c6370";
        };

        selection = lib.mkOption {
            type = lib.types.string;
            description = "Selection color";
            default = "474e5d";
        };

        black = lib.mkOption {
            type = lib.types.string;
            description = "Background color";
            default = "282c34";
        };

        white = lib.mkOption {
            type = lib.types.string;
            description = "Foreground color";
            default ="dcdfe4";
        };
        
        red = lib.mkOption {
            type = lib.types.string;
            description = "Red color";
            default ="e06c75";
        };

        orange = lib.mkOption {
            type = lib.types.string;
            description = "Orange color";
            default = "de935f";
        };

        yellow = lib.mkOption {
            type = lib.types.string;
            description = "Yellow color";
            default ="e5c07b";
        };

        green = lib.mkOption {
            type = lib.types.string;
            description = "Green color";
            default =  "98c379";
        };

        cyan = lib.mkOption {
            type = lib.types.string;
            description = "Cyan color";
            default = "56b6c2";
        };

        magenta = lib.mkOption {
            type = lib.types.string;
            description = "Magenta color";
            default = "c678dd";
        };
    };

    config = {};

}


