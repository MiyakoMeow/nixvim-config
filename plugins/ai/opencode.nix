{
  plugins.opencode = {
    enable = true;
  };

  keymaps = [
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>aa";
      action = ''<cmd>lua require("opencode").ask("@this: ", { submit = true })<cr>'';
      options = {
        desc = "Ask opencode";
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>ax";
      action = ''<cmd>lua require("opencode").select()<cr>'';
      options = {
        desc = "Execute opencode action";
      };
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "<leader>a.";
      action = ''<cmd>lua require("opencode").toggle()<cr>'';
      options = {
        desc = "Toggle opencode";
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>ao";
      action = ''<cmd>lua return require("opencode").operator("@this ")<cr>'';
      options = {
        desc = "Add range to opencode";
        expr = true;
      };
    }
    {
      mode = "n";
      key = "<leader>al";
      action = ''<cmd>lua return require("opencode").operator("@this ") .. "_"<cr>'';
      options = {
        desc = "Add line to opencode";
        expr = true;
      };
    }
    {
      mode = "n";
      key = "<leader>au";
      action = ''<cmd>lua require("opencode").command("session.half.page.up")<cr>'';
      options = {
        desc = "Scroll opencode up";
      };
    }
    {
      mode = "n";
      key = "<leader>ad";
      action = ''<cmd>lua require("opencode").command("session.half.page.down")<cr>'';
      options = {
        desc = "Scroll opencode down";
      };
    }
  ];
}
