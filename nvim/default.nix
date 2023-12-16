{pkgs, ...}:

pkgs.vimUtils.buildVimPlugin {
    name = "bright-bit.nvim";
    version = "14-11-2023";
    src = ./.;
    meta.homepage = "https://www.github.com/Azeved00/bright-bit";
}
