{
  plugins.web-devicons.enable = true;

  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        offsets = [
          {
            filetype = "snacks_picker_list";
            text = "Picker List";
            highlight = "Directory";
            text_align = "center";
          }
        ];
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader><tab>]";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Next Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>[";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Previous Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>l";
      action = "<cmd>BufferLineGoToBuffer -1<cr>";
      options = {
        desc = "Last Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>f";
      action = "<cmd>BufferLineGoToBuffer 1<cr>";
      options = {
        desc = "First Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader><tab><tab>";
      action = "<cmd>enew<cr>";
      options = {
        desc = "New Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>d";
      action = "<cmd>bdelete<cr>";
      options = {
        desc = "Close Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>c";
      action = "<cmd>BufferLineCloseOthers<cr>";
      options = {
        desc = "Close Other Buffers";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>p";
      action = "<cmd>BufferLinePick<cr>";
      options = {
        desc = "Pick Buffer";
      };
    }
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Previous Buffer";
      };
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Next Buffer";
      };
    }
    {
      mode = "n";
      key = "<A-S-h>";
      action = "<cmd>BufferLineMovePrev<cr>";
      options = {
        desc = "Move Buffer Left";
      };
    }
    {
      mode = "n";
      key = "<A-S-l>";
      action = "<cmd>BufferLineMoveNext<cr>";
      options = {
        desc = "Move Buffer Right";
      };
    }
    {
      mode = "n";
      key = "<C-S-h>";
      action = "<cmd>BufferLineGoToBuffer 1<cr>";
      options = {
        desc = "First Buffer";
      };
    }
    {
      mode = "n";
      key = "<C-S-l>";
      action = "<cmd>BufferLineGoToBuffer -1<cr>";
      options = {
        desc = "Last Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>dd";
      action = "<cmd>bdelete<cr>";
      options = {
        desc = "Close Current Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>bo";
      action = "<cmd>BufferLineCloseOthers<cr>";
      options = {
        desc = "Close Other Buffers";
      };
    }
    {
      mode = "n";
      key = "<leader>bb";
      action = "<cmd>e #<cr>";
      options = {
        desc = "Switch to Other Buffer";
      };
    }
    {
      mode = "n";
      key = "`";
      action = "<cmd>e #<cr>";
      options = {
        desc = "Switch to Other Buffer";
      };
    }
    {
      mode = "n";
      key = "[b";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Previous Buffer";
      };
    }
    {
      mode = "n";
      key = "]b";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Next Buffer";
      };
    }
    {
      mode = "n";
      key = "[B";
      action = "<cmd>BufferLineMovePrev<cr>";
      options = {
        desc = "Move Buffer Left";
      };
    }
    {
      mode = "n";
      key = "]B";
      action = "<cmd>BufferLineMoveNext<cr>";
      options = {
        desc = "Move Buffer Right";
      };
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = "<cmd>BufferLineTogglePin<cr>";
      options = {
        desc = "Toggle Pin Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>bP";
      action = "<cmd>lua require('bufferline').group_close('ungrouped')<cr>";
      options = {
        desc = "Delete Non-Pinned Buffers";
      };
    }
    {
      mode = "n";
      key = "<leader>br";
      action = "<cmd>BufferLineCloseRight<cr>";
      options = {
        desc = "Delete Buffers to the Right";
      };
    }
    {
      mode = "n";
      key = "<leader>bl";
      action = "<cmd>BufferLineCloseLeft<cr>";
      options = {
        desc = "Delete Buffers to the Left";
      };
    }
    {
      mode = "n";
      key = "<leader>bD";
      action = "<cmd>bdelete<cr><cmd>close<cr>";
      options = {
        desc = "Delete Buffer and Window";
      };
    }
  ];
}
