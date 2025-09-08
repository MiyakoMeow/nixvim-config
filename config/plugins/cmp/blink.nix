{
  plugins = {
    blink-cmp = {
      enable = true;

      # Basic settings - using minimal configuration to avoid compatibility issues
      settings = {
        keymap = {
          preset = "default";
          "<A-1>" = [
            "select_and_accept"
            "fallback"
          ];
          "<A-2>" = [
            "select_next"
            "select_and_accept"
            "fallback"
          ];
          "<A-3>" = [
            "select_next"
            "select_next"
            "select_and_accept"
            "fallback"
          ];
          "<A-4>" = [
            "select_next"
            "select_next"
            "select_next"
            "select_and_accept"
            "fallback"
          ];
          "<A-5>" = [
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_and_accept"
            "fallback"
          ];
          "<A-6>" = [
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_and_accept"
            "fallback"
          ];
          "<A-7>" = [
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_and_accept"
            "fallback"
          ];
          "<A-8>" = [
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_and_accept"
            "fallback"
          ];
          "<A-9>" = [
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_next"
            "select_and_accept"
            "fallback"
          ];
          "<A-j>" = [
            "select_next"
            "fallback"
          ];
          "<A-k>" = [
            "select_prev"
            "fallback"
          ];
          "<A-n>" = [
            "scroll_documentation_down"
            "fallback"
          ];
          "<A-m>" = [
            "scroll_documentation_up"
            "fallback"
          ];
          "<Enter>" = [
            "accept"
            "fallback"
          ];
        };

        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
            "avante_commands"
            "avante_mentions"
            "avante_shortcuts"
            "avante_files"
          ];

          providers = {
            avante_commands = {
              name = "avante_commands";
              module = "blink.compat.source";
              score_offset = 90; # show at a higher priority than lsp
              opts = {};
            };
            avante_files = {
              name = "avante_files";
              module = "blink.compat.source";
              score_offset = 100; # show at a higher priority than lsp
              opts = {};
            };
            avante_mentions = {
              name = "avante_mentions";
              module = "blink.compat.source";
              score_offset = 1000; # show at a higher priority than lsp
              opts = {};
            };
            avante_shortcuts = {
              name = "avante_shortcuts";
              module = "blink.compat.source";
              score_offset = 1000; # show at a higher priority than lsp
              opts = {};
            };
          };
        };

        # Use default completion settings
        completion = {
          menu = {
            border = "rounded";
          };
          documentation = {
            window = {
              border = "rounded";
            };
          };
        };

        signature = {
          enabled = true;
        };
      };
    };

    # Snippet support
    luasnip = {
      enable = true;
    };

    # Friendly snippets collection
    friendly-snippets = {
      enable = true;
    };

    # blink.compat source for avante integration is handled in the providers config
    blink-compat = {
      enable = true;
    };
  };
}
