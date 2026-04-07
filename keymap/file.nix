{
  keymaps = [
    {
      mode = [
        "i"
        "x"
        "n"
        "s"
      ];
      key = "<C-s>";
      action = "<cmd>w<cr>";
      options = {
        desc = "Save File";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fn";
      action = "<cmd>enew<cr>";
      options = {
        desc = "New File";
      };
    }
  ];
}
