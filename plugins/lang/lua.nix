{
  plugins.lsp.servers.lua_ls = {
    enable = true;
    cmd = [ "lua-language-server" ];
    filetypes = [ "lua" ];
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT";
        };
        diagnostics = {
          globals = [ "vim" ];
        };
        workspace = {
          library = [
            "\${3rd}/luv/library"
            "\${3rd}/busted/library"
          ];
          checkThirdParty = false;
        };
        telemetry = {
          enable = false;
        };
      };
    };
  };

  plugins.dap.configurations.lua = [
    {
      name = "Current file (local-lua-debugger-vscode)";
      type = "local-lua-debugger-vscode";
      request = "launch";
      cwd.__raw = "function() return vim.fn.getcwd() end";
      program.__raw = "function() return vim.fn.expand('%:p') end";
      args = [ ];
    }
  ];
}
