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
}
