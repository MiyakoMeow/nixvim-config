{
  plugins.flash = {
    enable = true;

    settings = {
      # Enable flash search
      search = {
        mode = "fuzzy";
        # Default case insensitive
        incremental = false;
      };
      # Jump settings
      jump = {
        autojump = false;
      };
      # Label settings
      label = {
        uppercase = false;
        rainbow = {
          enabled = false;
          shade = 5;
        };
      };
      # Highlight settings
      highlight = {
        backdrop = true;
        matches = true;
        priority = 5000;
        groups = {
          match = "FlashMatch";
          current = "FlashCurrent";
          backdrop = "FlashBackdrop";
          label = "FlashLabel";
        };
      };
      # Action settings
      action = null;
      # Pattern settings
      pattern = "";
      # Continue settings
      continue = false;
      # Remote settings
      remote_op = {
        restore = false;
        motion = false;
      };
      # Modes configuration for different case sensitivity
      modes = {
        search = {
          # Default case insensitive
          enabled = true;
        };
        char = {
          enabled = false;
        };
      };
    };
  };

  keymaps = [
    # Flash search - case insensitive (s)
    {
      mode = "n";
      key = "s";
      action.__raw = "function() require('flash').jump({ search = { mode = 'fuzzy', case_insensitive = true } }) end";
      options = {
        desc = "Flash Jump (Case Insensitive)";
        silent = true;
      };
    }
    # Flash search in visual mode - case insensitive (s)
    {
      mode = "x";
      key = "s";
      action.__raw = "function() require('flash').jump({ search = { mode = 'fuzzy', case_insensitive = true } }) end";
      options = {
        desc = "Flash Jump (Case Insensitive)";
        silent = true;
      };
    }
    # Flash search - case sensitive (S)
    {
      mode = "n";
      key = "S";
      action.__raw = "function() require('flash').jump({ search = { mode = 'fuzzy', case_insensitive = false } }) end";
      options = {
        desc = "Flash Jump (Case Sensitive)";
        silent = true;
      };
    }
    # Flash treesitter search
    {
      mode = "n";
      key = "<leader>st";
      action.__raw = "function() require('flash').treesitter() end";
      options = {
        desc = "Flash Treesitter";
        silent = true;
      };
    }
    # Flash remote operation
    {
      mode = "o";
      key = "r";
      action.__raw = "function() require('flash').remote() end";
      options = {
        desc = "Remote Flash";
        silent = true;
      };
    }
    # Flash treesitter search in visual mode
    {
      mode = "x";
      key = "R";
      action.__raw = "function() require('flash').treesitter_search() end";
      options = {
        desc = "Treesitter Search";
        silent = true;
      };
    }
  ];
}
