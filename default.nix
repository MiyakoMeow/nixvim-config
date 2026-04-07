# This file provides a non-flake build interface using flake-compat
# It automatically reads the flake.lock file to get the exact versions/hashes of dependencies

let
  # Fetch flake-compat with the exact version from flake.lock
  lockFile = builtins.fromJSON (builtins.readFile ./flake.lock);
  flakeCompatNode = lockFile.nodes."flake-compat";

  flake-compat = builtins.fetchTarball {
    url = "https://github.com/${flakeCompatNode.original.owner}/${flakeCompatNode.original.repo}/archive/${flakeCompatNode.locked.rev}.tar.gz";
    sha256 = flakeCompatNode.locked.narHash;
  };

  # Import the flake using flake-compat
  flake =
    (import flake-compat {
      src = ./.;
    }).defaultNix;

  # Get the current system
  system = builtins.currentSystem;

in
# Return the default package from the flake
flake.packages.${system}.default or flake.packages.${system}.neovim
