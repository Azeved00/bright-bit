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
            default = import ./system.nix;

            colors  = import ./colors.nix;
            sddm = import ./sddm colors;
        };

        homeManagerModules = {
            default = import ./user.nix colors;

            colors  = import ./colors.nix;
            firefox = import ./firefox ;
            nvim = import ./nvim ;
            tmux = import ./tmux;
            dunst = import ./dunst colors;
            alacritty = import ./alacritty colors;
        };

        packages.${system} = {
            default = pkgs.callPackage ./nvim/package.nix {};

            nvim = pkgs.callPackage ./nvim/package.nix {};
            tmux = pkgs.callPackage ./tmux/package.nix {};
            sddm = pkgs.callPackage ./sddm/package.nix {};
        };

        
    };
}

