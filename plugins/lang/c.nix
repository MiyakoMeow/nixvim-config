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

  plugins.dap.configurations = {
    c = [
      {
        name = "Launch file";
        type = "codelldb";
        request = "launch";
        program.__raw = "function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end";
        cwd.__raw = "function() return vim.fn.getcwd() end";
        stopAtEntry = false;
        externalConsole = false;
      }
    ];

    cpp = [
      {
        name = "Launch file";
        type = "codelldb";
        request = "launch";
        program.__raw = "function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end";
        cwd.__raw = "function() return vim.fn.getcwd() end";
        stopAtEntry = false;
        externalConsole = false;
      }
    ];
  };
}
