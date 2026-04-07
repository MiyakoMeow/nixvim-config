{
  keymaps = [
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
    {
      mode = "n";
      key = "n";
      action = ''"Nn"[v:searchforward] .. "zv"'';
      options = {
        desc = "Next Search Result";
        expr = true;
        silent = true;
      };
    }
    {
      mode = [
        "x"
        "o"
      ];
      key = "n";
      action = ''"Nn"[v:searchforward]'';
      options = {
        desc = "Next Search Result";
        expr = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "N";
      action = ''"nN"[v:searchforward] .. "zv"'';
      options = {
        desc = "Previous Search Result";
        expr = true;
        silent = true;
      };
    }
    {
      mode = [
        "x"
        "o"
      ];
      key = "N";
      action = ''"nN"[v:searchforward]'';
      options = {
        desc = "Previous Search Result";
        expr = true;
        silent = true;
      };
    }
  ];
}
