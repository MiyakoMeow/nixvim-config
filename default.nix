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

  nixvimWrapped = nixvim'.makeNixvimWithModule nixvimModule;

  nixvimBin =
    pkgs.runCommand "nixvim"
      {
        buildInputs = [ nixvimWrapped ];
        nativeBuildInputs = [ pkgs.makeWrapper ];
        pname = "nixvim";
      }
      ''
        mkdir -p $out/bin
        makeWrapper ${nixvimWrapped}/bin/nvim $out/bin/nixvim
        touch $out
      '';
in
{
  inherit nixvimModule;
  lib = nixvimLib;
  packages = {
    default = nixvimBin;
    nixvim = nixvimBin;
  };
}
