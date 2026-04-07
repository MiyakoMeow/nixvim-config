{
  lib,
  pkgs,
  nixvim,
  system,
}:
let
  pluginsDirExists = lib.pathExists ./plugins;
  langDirExists = lib.pathExists ./lang;
  configDirExists = lib.pathExists ./config;

  pluginFiles = if pluginsDirExists then lib.filesystem.listFilesRecursive ./plugins else [ ];
  langFiles = if langDirExists then lib.filesystem.listFilesRecursive ./lang else [ ];
  configFiles = if configDirExists then lib.filesystem.listFilesRecursive ./config else [ ];

  nixFiles = lib.filter (file: lib.hasSuffix ".nix" (toString file)) (
    pluginFiles ++ langFiles ++ configFiles
  );

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
