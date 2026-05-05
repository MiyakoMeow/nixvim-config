{
  plugins.fzf-lua = {
    enable = true;
    keymaps = {
      "<leader><leader>" = "files";
      "<leader>/" = "live_grep";
      "<leader>fg" = "live_grep";
      "<leader>ff" = "files";
      "<leader>fb" = "buffers";
      "<leader>fc" = {
        action = "git_files";
        options = {
          silent = true;
          desc = "Fzf-Lua Git Files";
        };
      };
      "<leader>fh" = "help_tags";
      "<leader>fr" = "oldfiles";
      "<leader>sr" = "live_grep";
    };
  };
}
