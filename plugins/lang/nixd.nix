{
  plugins.lsp.servers.nixd = {
    enable = true;
    cmd = [ "nixd" ];
    filetypes = [ "nix" ];
    settings = {
      nixd = {
        formatting = {
          command = [ "nixfmt" ];
        };
        options = {
          nixos = {
            expr = "(builtins.getFlake \"/home/miyakomeow/Codes/nixvim-config\").nixosConfigurations.default.options";
          };
          home-manager = {
            expr = "(builtins.getFlake \"/home/miyakomeow/Codes/nixvim-config\").homeConfigurations.default.options";
          };
        };
      };
    };
  };
}
