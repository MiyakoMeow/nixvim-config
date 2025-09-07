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
          ];
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
  };
}
