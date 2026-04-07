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
}
