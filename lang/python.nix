{
  plugins.lsp.servers = {
    ruff = {
      enable = true;
    };
    ty = {
      enable = true;
    };
  };

  plugins.dap.configurations.python = [
    {
      type = "debugpy";
      request = "launch";
      name = "Launch file";
      program.__raw = "function() return vim.fn.expand('%:p') end";
      pythonPath.__raw = "function() return 'python' end";
    }
  ];
}
