{
  keymaps = [
    # better up/down: move by display lines when no count, actual lines when count given
    {
      mode = [
        "n"
        "x"
      ];
      key = "j";
      action = "v:count == 0 ? 'gj' : 'j'";
      options = {
        desc = "Down";
        expr = true;
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<Down>";
      action = "v:count == 0 ? 'gj' : 'j'";
      options = {
        desc = "Down";
        expr = true;
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "k";
      action = "v:count == 0 ? 'gk' : 'k'";
      options = {
        desc = "Up";
        expr = true;
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<Up>";
      action = "v:count == 0 ? 'gk' : 'k'";
      options = {
        desc = "Up";
        expr = true;
        silent = true;
      };
    }

    # window navigation with ctrl+hjkl
    {
      mode = [
        "n"
        "i"
        "v"
        "t"
      ];
      key = "<C-h>";
      action = "<cmd>wincmd h<CR>";
      options = {
        desc = "Go to Left Window";
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
      key = "<C-j>";
      action = "<cmd>wincmd j<CR>";
      options = {
        desc = "Go to Lower Window";
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
      key = "<C-k>";
      action = "<cmd>wincmd k<CR>";
      options = {
        desc = "Go to Upper Window";
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
      key = "<C-l>";
      action = "<cmd>wincmd l<CR>";
      options = {
        desc = "Go to Right Window";
        remap = true;
      };
    }
  ];
}
