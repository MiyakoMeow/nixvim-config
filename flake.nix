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
