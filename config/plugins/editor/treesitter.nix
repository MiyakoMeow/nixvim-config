{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;
    settings = {
      ensure_installed = ["rust" "python" "c" "cpp" "json" "yaml" "toml" "nix" "javascript" "typescript" "sql"];
      sync_install = true;
      autotag.enable = true;
      indent.enable = true;
      highlight.enable = true;
      incremental_selection.enable = true;
      query_linter = { enable = true; };
      rainbow = {
        enable = true;
        # disable = { "jsx"; "cpp" }; list of languages you want to disable the plugin for
        extended_mode = true; # Also highlight non-bracket delimiters like html tags; boolean or table: lang -> boolean
        max_file_lines = nil; # Do not enable for files with more than n lines; int
        # colors = {}; # table of hex strings
        # termcolors = {} # table of colour name strings
      };
    };
    folding = false;
    nixvimInjections = true;
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };

  plugins.treesitter-textobjects = {
    enable = false;
    select = {
      enable = true;
      lookahead = true;
      keymaps = {
        "aa" = "@parameter.outer";
        "ia" = "@parameter.inner";
        "af" = "@function.outer";
        "if" = "@function.inner";
        "ac" = "@class.outer";
        "ic" = "@class.inner";
        "ii" = "@conditional.inner";
        "ai" = "@conditional.outer";
        "il" = "@loop.inner";
        "al" = "@loop.outer";
        "at" = "@comment.outer";
      };
    };
    move = {
      enable = true;
      gotoNextStart = {
        "]m" = "@function.outer";
        "]]" = "@class.outer";
      };
      gotoNextEnd = {
        "]M" = "@function.outer";
        "][" = "@class.outer";
      };
      gotoPreviousStart = {
        "[m" = "@function.outer";
        "[[" = "@class.outer";
      };
      gotoPreviousEnd = {
        "[M" = "@function.outer";
        "[]" = "@class.outer";
      };
    };
    swap = {
      enable = true;
      swapNext = {
        "<leader>a" = "@parameters.inner";
      };
      swapPrevious = {
        "<leader>A" = "@parameter.outer";
      };
    };
  };
}
