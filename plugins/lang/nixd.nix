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

  plugins.dap.configurations.nix = [
    {
      name = "Launch Nix executable";
      type = "codelldb";
      request = "launch";
      program.__raw = "function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end";
      cwd.__raw = "function() return vim.fn.getcwd() end";
      stopAtEntry = false;
      externalConsole = false;
    }
  ];
}
