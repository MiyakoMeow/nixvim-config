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
      action.__raw = "function() require('neo-tree.command').execute({ toggle = true }) end";
      options = {
        desc = "Neo-tree";
        silent = true;
      };
    }
  ];
}
