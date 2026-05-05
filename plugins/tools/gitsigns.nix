{
  plugins.gitsigns = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "]h";
      action.__raw = ''
        function()
          if vim.wo.diff then
            return "]c"
          end
          vim.schedule(function()
            require("gitsigns").next_hunk()
          end)
          return "<Ignore>"
        end
      '';
      options = {
        desc = "Next Hunk";
        expr = true;
      };
    }
    {
      mode = "n";
      key = "[h";
      action.__raw = ''
        function()
          if vim.wo.diff then
            return "[c"
          end
          vim.schedule(function()
            require("gitsigns").prev_hunk()
          end)
          return "<Ignore>"
        end
      '';
      options = {
        desc = "Previous Hunk";
        expr = true;
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>ghs";
      action = "<cmd>Gitsigns stage_hunk<cr>";
      options = {
        desc = "Stage Hunk";
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>ghr";
      action = "<cmd>Gitsigns reset_hunk<cr>";
      options = {
        desc = "Reset Hunk";
      };
    }
    {
      mode = "n";
      key = "<leader>ghS";
      action = "<cmd>lua require('gitsigns').stage_buffer()<cr>";
      options = {
        desc = "Stage Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>ghu";
      action = "<cmd>lua require('gitsigns').undo_stage_hunk()<cr>";
      options = {
        desc = "Undo Stage Hunk";
      };
    }
    {
      mode = "n";
      key = "<leader>ghR";
      action = "<cmd>lua require('gitsigns').reset_buffer()<cr>";
      options = {
        desc = "Reset Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>ghp";
      action = "<cmd>lua require('gitsigns').preview_hunk_inline()<cr>";
      options = {
        desc = "Preview Hunk Inline";
      };
    }
    {
      mode = "n";
      key = "<leader>ghb";
      action = "<cmd>lua require('gitsigns').blame_line({ full = true })<cr>";
      options = {
        desc = "Blame Line";
      };
    }
    {
      mode = "n";
      key = "<leader>ghd";
      action = "<cmd>lua require('gitsigns').diffthis()<cr>";
      options = {
        desc = "Diff This";
      };
    }
    {
      mode = "n";
      key = "<leader>ghD";
      action = "<cmd>lua require('gitsigns').diffthis('~')<cr>";
      options = {
        desc = "Diff This ~";
      };
    }
  ];
}
