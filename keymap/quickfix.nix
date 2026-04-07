{
  keymaps = [
    {
      mode = "n";
      key = "[q";
      action = "<cmd>cprev<cr>";
      options = {
        desc = "Previous Quickfix";
      };
    }
    {
      mode = "n";
      key = "]q";
      action = "<cmd>cnext<cr>";
      options = {
        desc = "Next Quickfix";
      };
    }
  ];
}
