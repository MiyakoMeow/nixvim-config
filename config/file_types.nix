{
  autoGroups = {
    filetypes = { };
  };

  # Indentation settings for various file types (2 spaces)
  files."ftplugin/javascript.lua" = {
    autoCmd = [
      {
        event = "FileType";
        pattern = "javascript";
        callback = {
          __raw = ''
            function()
              vim.opt_local.shiftwidth = 2
              vim.opt_local.tabstop = 2
              vim.opt_local.expandtab = true
            end
          '';
        };
      }
    ];
  };

  files."ftplugin/typescript.lua" = {
    autoCmd = [
      {
        event = "FileType";
        pattern = "typescript";
        callback = {
          __raw = ''
            function()
              vim.opt_local.shiftwidth = 2
              vim.opt_local.tabstop = 2
              vim.opt_local.expandtab = true
            end
          '';
        };
      }
    ];
  };

  files."ftplugin/json.lua" = {
    autoCmd = [
      {
        event = "FileType";
        pattern = "json";
        callback = {
          __raw = ''
            function()
              vim.opt_local.shiftwidth = 2
              vim.opt_local.tabstop = 2
              vim.opt_local.expandtab = true
            end
          '';
        };
      }
    ];
  };

  files."ftplugin/lua.lua" = {
    autoCmd = [
      {
        event = "FileType";
        pattern = "lua";
        callback = {
          __raw = ''
            function()
              vim.opt_local.shiftwidth = 2
              vim.opt_local.tabstop = 2
              vim.opt_local.expandtab = true
            end
          '';
        };
      }
    ];
  };

  files."ftplugin/nix.lua" = {
    autoCmd = [
      {
        event = "FileType";
        pattern = "nix";
        callback = {
          __raw = ''
            function()
              vim.opt_local.shiftwidth = 2
              vim.opt_local.tabstop = 2
              vim.opt_local.expandtab = true
            end
          '';
        };
      }
    ];
  };
}
