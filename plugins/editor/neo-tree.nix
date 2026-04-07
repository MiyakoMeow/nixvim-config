{
  plugins.neo-tree = {
    enable = true;
    settings = {
      log_to_file = false;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Neo-tree";
      };
    }
  ];
}
