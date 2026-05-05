{ pkgs, ... }:
{
  plugins.treesitter = {
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

  plugins.rainbow-delimiters = {
    enable = true;
  };
}
