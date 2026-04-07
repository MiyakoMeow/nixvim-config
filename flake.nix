{
  description = "MiyakoMeow's NixVim configuration";

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
      systems = nixpkgs.lib.systems.flakeExposed;

      perSystem =
        {
          system,
          pkgs,
          self',
          lib,
          ...
        }:
        let
          nixvimConfig = import ./default.nix {
            inherit
              lib
              pkgs
              nixvim
              system
              ;
          };
        in
        {
          checks = {
            default = nixvimConfig.lib.check.mkTestDerivationFromNixvimModule nixvimConfig.nixvimModule;
          };

          formatter = pkgs.nixfmt-tree;

          packages = nixvimConfig.packages;

          devShells = {
            default = with pkgs; mkShell { };
          };
        };
    };
}
