{
  plugins.lsp.servers.clangd = {
    enable = true;
    cmd = [ "clangd" ];
    filetypes = [
      "c"
      "cpp"
      "objc"
      "objcpp"
    ];
  };
}
