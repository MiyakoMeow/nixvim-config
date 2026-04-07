{
  plugins.rustaceanvim = {
    enable = true;
    settings = {
      server = {
        default_settings = {
          rust-analyzer = {
            checkOnSave = true;
            check = {
              command = "clippy";
            };
            diagnostics = {
              enable = true;
            };
            cargo = {
              allFeatures = true;
            };
            procMacro = {
              enable = true;
            };
          };
        };
      };
    };
  };
}
