{
  description = "MiyakoMeow's NixVim configuration";

  # The nixConfig here only affects the flake itself, not the system configuration!
  # NOTE: Keep in sync with substituters.toml (nixConfig does not support computed values)
  nixConfig = {
    substituters = [
      "https://mirrors.ustc.edu.cn/nix-channels/store"
      "https://mirrors.sjtug.sjtu.edu.cn/nix-channels/store"
      "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
      "https://nix-community.cachix.org"
      "https://miyakomeow.cachix.org"
      "https://cache.garnix.io"
      "https://cache.nixos.org"
    ];
    trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "miyakomeow.cachix.org-1:85k7pjjK1Voo+kMHJx8w3nT1rlBow3+4/M+LsAuMCRY="
      "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    ];
  };

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
