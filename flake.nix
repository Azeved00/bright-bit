{
    description = "A very basic flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs } : 
    let 
        system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; };
    in
    {
        packages.${system}= {
            #bright-bit-nvim 
            default = pkgs.vimUtils.buildVimPlugin {
                name = "bright-bit.nvim";
                version = "14-11-2023";
                src = ./nvim/.;
                meta.homepage = "";
            };
        };
    };
}

