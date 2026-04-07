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
      action = "<cmd>lua require('neo-tree.command').execute({ toggle = true })<cr>";
      options = {
        desc = "Neo-tree";
      };
    }
  ];
}
