{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;

      settings = {
        indent = {
          enable = true;
        };
        highlight = {
          enable = true;
        };
        incremental_selection = {
          enable = true;
        };
      };

      nixvimInjections = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };

    treesitter-context = {
      enable = true;
      settings = {
        max_lines = 10;
        multiline_threshold = 10;
        trim_scope = "outer";
        mode = "cursor";
        separator = "─";
      };
    };

    treesitter-textobjects = {
      enable = true;
      settings.select = {
        enable = true;
        lookahead = true;
      };
    };

    rainbow-delimiters = {
      enable = true;
    };
  };
}
