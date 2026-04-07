{
  plugins.lsp.servers.bashls = {
    enable = true;
    cmd = [
      "bash-language-server"
      "start"
    ];
    filetypes = [
      "sh"
      "bash"
    ];
  };
}
