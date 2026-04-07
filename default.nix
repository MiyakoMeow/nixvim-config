{
  lib,
  pkgs,
  nixvim,
  system,
}:
let
  pluginsDirExists = lib.pathExists ./plugins;

  pluginFiles = if pluginsDirExists then lib.filesystem.listFilesRecursive ./plugins else [ ];

  nixFiles = lib.filter (file: lib.hasSuffix ".nix" (toString file)) pluginFiles;

  relativePaths = map (file: ./. + (lib.removePrefix (toString ./.) (toString file))) nixFiles;

  nixvimLib = nixvim.lib.${system};
  nixvim' = nixvim.legacyPackages.${system};

  nixvimModule = {
    inherit pkgs;
    module = {
      imports = relativePaths;
    };
    extraSpecialArgs = {
    };
  };

  nvim = (nixvim'.makeNixvimWithModule nixvimModule).overrideAttrs (oldAttrs: {
    buildInputs = (oldAttrs.buildInputs or [ ]) ++ (with pkgs; [ alejandra ]);
  });
in
{
  inherit nixvimModule;
  lib = nixvimLib;
  packages = {
    default = nvim;
    neovim = nvim;
  };
}
