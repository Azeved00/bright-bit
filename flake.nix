{
    description = "The bright bit theme";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs} : 
    let 
        system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; };
    in
    {
        nixosModule = import ./system.nix;
        nixosModules = {
            colors  = import ./colors.nix;
            sddm = import ./sddm;
        };

        homeManagerModule = import ./user.nix;
        homeManagerModules = {
            colors  = import ./colors.nix;
            firefox = import ./firefox ;
            nvim = import ./nvim ;
            dunst = import ./dunst;
        };

        packages.${system} = {
            nvim = import ./nvim/package.nix ( pkgs );
            sddm = import ./sddm/package.nix ( pkgs );
            default = import ./nvim/package.nix ( pkgs );
        };

        
    };
}

