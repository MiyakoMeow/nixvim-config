{
  description = "deCort.tech NeoVim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        flake-parts.follows = "flake-parts";
      };
    };
  };

  outputs =
    {
      nixpkgs,
      nixvim,
      flake-parts,
      ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-linux"
        "x86_64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];

      perSystem =
        {
          system,
          pkgs,
          self',
          lib,
          ...
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
          checks = {
            default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          };

          formatter = pkgs.nixfmt-tree;

          packages = {
            default = nvim;
            neovim = nvim;
          };

          devShells = {
            default = with pkgs; mkShell { };
          };
        };
    };
}
