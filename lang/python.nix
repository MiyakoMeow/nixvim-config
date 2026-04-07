{
  plugins.lsp.servers.pyright = {
    enable = true;
    cmd = [
      "pyright-langserver"
      "--stdio"
    ];
    filetypes = [ "python" ];
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true;
          diagnosticMode = "workspace";
          useLibraryCodeForTypes = true;
        };
      };
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
