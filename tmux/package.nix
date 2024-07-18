{ lib, stdenv, ...}:

let
    rtpPath = "share/tmux-plugins";

    addRtp = path: rtpFilePath: attrs: derivation:
        derivation // { rtp = "${derivation}/${path}/${rtpFilePath}"; } // {
        overrideAttrs = f: mkTmuxPlugin (attrs // f attrs);
    };

    #this was shamelessly stolen from https://github.com/NixOS/nixpkgs/blob/nixos-24.05/pkgs/misc/tmux-plugins/default.nix#L413
    mkTmuxPlugin = a@{
        pluginName,
        rtpFilePath ? (builtins.replaceStrings ["-"] ["_"] pluginName) + ".tmux",
        namePrefix ? "tmuxplugin-",
        src,
        unpackPhase ? "",
        configurePhase ? ":",
        buildPhase ? ":",
        addonInfo ? null,
        preInstall ? "",
        postInstall ? "",
        path ? lib.getName pluginName,
        ...
    }:
    if lib.hasAttr "dependencies" a then
        throw "dependencies attribute is obselete. see NixOS/nixpkgs#118034" # added 2021-04-01
    else addRtp "${rtpPath}/${path}" rtpFilePath a (stdenv.mkDerivation (a // {
        pname = namePrefix + pluginName;

        inherit pluginName unpackPhase configurePhase buildPhase addonInfo preInstall postInstall;

        installPhase = ''
        runHook preInstall

        target=$out/${rtpPath}/${path}
            mkdir -p $out/${rtpPath}
            cp -r . $target
            if [ -n "$addonInfo" ]; then
              echo "$addonInfo" > $target/addon-info.json
            fi

            runHook postInstall
        '';
    }));
in mkTmuxPlugin {
    pluginName = "bright-bit.tmux";
    version = "0.1.0";
    src = ./.;
    meta = {
        homepage = "https://www.github.com/Azeved00/bright-bit";
        description = "A tmux theme with the bright-bit colors";
    };
}
