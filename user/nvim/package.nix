{pkgs, ...}:

pkgs.vimUtils.buildVimPlugin {
    name = "bright-bit.nvim";
    version = "0.1.0";
    src = ./.;
    meta = {
        homepage = "https://www.github.com/Azeved00/bright-bit";
        description = ''
            A neovim theme with the bright-bit colors
        '';
    };
}
