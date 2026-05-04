{
  plugins = {
    lazygit = {
      enable = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<cr>";
      options = {
        desc = "Open LazyGit in current directory";
      };
    }
    {
      mode = "n";
      key = "<leader>gf";
      action = "<cmd>LazyGitCurrentFile<cr>";
      options = {
        desc = "Open LazyGit for current file";
      };
    }
  ];
}
