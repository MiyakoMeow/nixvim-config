{
  plugins.lsp.servers.jsonls = {
    enable = true;
    cmd = [
      "vscode-json-language-server"
      "--stdio"
    ];
    filetypes = [
      "json"
      "jsonc"
    ];
  };
}
