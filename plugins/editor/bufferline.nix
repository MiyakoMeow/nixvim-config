{
  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        # Configure offsets for snacks file explorer
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
    # Bufferline tab navigation
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
    # Additional bufferline shortcuts
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
    # Quick buffer navigation
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
    # Move buffers
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
    # Jump to first/last buffer
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
  ];
}
