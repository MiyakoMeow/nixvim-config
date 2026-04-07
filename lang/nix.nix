{
  plugins.lsp.servers.nil_ls = {
    enable = true;
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
