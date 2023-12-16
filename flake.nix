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
        nixosModules = {
            colors  = import ./colors.nix;
            sddm = import ./sddm;
        };

        homeManagerModules = {
            firefox = import ./firefox ;
        };

        packages.${system} = {
            nvim = import ./nvim ( pkgs );
            default = import ./nvim (pkgs);
        };

        
    };
}

