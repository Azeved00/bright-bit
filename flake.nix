{
    description = "The bright bit theme";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs} : 
    let 
        system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; };
        colors = import ./colors.nix;
    in
    {
        nixosModules = {
            default = import ./system colors;

            colors  = import ./colors.nix;
            sddm = import ./system/sddm colors;
        };

        homeManagerModules = {
            default = import ./user colors;

            colors  = import ./colors.nix;
            firefox = import ./user/firefox ;
            nvim = import ./user/nvim ;
            tmux = import ./user/tmux;
            dunst = import ./user/dunst colors;
            alacritty = import ./user/alacritty colors;
        };

        packages.${system} = {
            default = pkgs.callPackage ./user/nvim/package.nix {};

            nvim = pkgs.callPackage ./user/nvim/package.nix {};
            tmux = pkgs.callPackage ./user/tmux/package.nix {};
            sddm = pkgs.callPackage ./user/sddm/package.nix {};
        };

        
    };
}

