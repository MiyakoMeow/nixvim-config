{
  plugins.toggleterm = {
    enable = true;
  };

  keymaps = [
    {
      mode = [
        "n"
        "i"
        "v"
        "t"
      ];
      key = "<C-/>";
      action = "<cmd>ToggleTerm direction=horizontal<cr>";
      options = {
        desc = "Toggle Horizontal Terminal";
        remap = true;
      };
    }
    {
      mode = [
        "n"
        "i"
        "v"
        "t"
      ];
      key = "<C-S-/>";
      action = "<cmd>ToggleTerm direction=float<cr>";
      options = {
        desc = "Toggle Floating Terminal";
        remap = true;
      };
    }
    {
      mode = [
        "n"
        "i"
        "v"
        "t"
      ];
      key = "<leader>T";
      action = "<cmd>ToggleTerm direction=horizontal<cr>";
      options = {
        desc = "Toggle Default Terminal";
        remap = true;
      };
    }
    {
      mode = [
        "n"
        "i"
        "v"
        "t"
      ];
      key = "<leader>tt";
      action = "<cmd>ToggleTerm direction=horizontal<cr>";
      options = {
        desc = "Toggle Default Terminal";
        remap = true;
      };
    }
    {
      mode = [
        "n"
        "i"
        "v"
        "t"
      ];
      key = "<leader>tf";
      action = "<cmd>ToggleTerm direction=float<cr>";
      options = {
        desc = "Toggle Floating Terminal";
        remap = true;
      };
    }
  ];
}
