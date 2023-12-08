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
            nvim = pkgs.vimUtils.buildVimPlugin {
                name = "bright-bit.nvim";
                version = "14-11-2023";
                src = ./nvim/.;
                meta.homepage = "https://www.github.com/Azeved00/bright-bit";
            };

            default = self.packages.${system}.nvim;

        };

        
    };
}

