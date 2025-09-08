{
  # Disable snacks scroll animations globally
  globals.snacks_scroll = false;

  plugins.snacks = {
    enable = true;

    settings = {
      bigfile = {
        enabled = true;
      };
      dashboard = {
        enabled = false;
      };
      explorer = {
        enabled = true;
      };
      indent = {
        enabled = true;
      };
      input = {
        enabled = true;
      };
      notifier = {
        enabled = true;
        timeout = 3000;
      };
      picker = {
        enabled = true;
      };
      quickfile = {
        enabled = true;
      };
      scope = {
        enabled = true;
      };
      scroll = {
        enabled = true;
      };
      statuscolumn = {
        enabled = true;
      };
      words = {
        enabled = true;
        debounce = 100;
      };
      styles = {
        notification = {
          # wo = { wrap = true; }; # Wrap notifications
        };
      };
    };
  };

  keymaps = [
    # Top Pickers & Explorer
    {
      mode = "n";
      key = "<leader><space>";
      action.__raw = "function() Snacks.picker.smart() end";
      options.desc = "Smart Find Files";
    }
    {
      mode = "n";
      key = "<leader>,";
      action.__raw = "function() Snacks.picker.buffers() end";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>/";
      action.__raw = "function() Snacks.picker.grep() end";
      options.desc = "Grep";
    }
    {
      mode = "n";
      key = "<leader>:";
      action.__raw = "function() Snacks.picker.command_history() end";
      options.desc = "Command History";
    }
    {
      mode = "n";
      key = "<leader>n";
      action.__raw = "function() Snacks.picker.notifications() end";
      options.desc = "Notification History";
    }
    {
      mode = "n";
      key = "<leader>e";
      action.__raw = "function() Snacks.explorer() end";
      options.desc = "File Explorer";
    }
    # find
    {
      mode = "n";
      key = "<leader>fb";
      action.__raw = "function() Snacks.picker.buffers() end";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>fc";
      action.__raw = "function() Snacks.picker.files({ cwd = vim.fn.stdpath('config') }) end";
      options.desc = "Find Config File";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action.__raw = "function() Snacks.picker.files() end";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action.__raw = "function() Snacks.picker.git_files() end";
      options.desc = "Find Git Files";
    }
    {
      mode = "n";
      key = "<leader>fp";
      action.__raw = "function() Snacks.picker.projects() end";
      options.desc = "Projects";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action.__raw = "function() Snacks.picker.recent() end";
      options.desc = "Recent";
    }
    # git
    {
      mode = "n";
      key = "<leader>gb";
      action.__raw = "function() Snacks.picker.git_branches() end";
      options.desc = "Git Branches";
    }
    {
      mode = "n";
      key = "<leader>gl";
      action.__raw = "function() Snacks.picker.git_log() end";
      options.desc = "Git Log";
    }
    {
      mode = "n";
      key = "<leader>gL";
      action.__raw = "function() Snacks.picker.git_log_line() end";
      options.desc = "Git Log Line";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action.__raw = "function() Snacks.picker.git_status() end";
      options.desc = "Git Status";
    }
    {
      mode = "n";
      key = "<leader>gS";
      action.__raw = "function() Snacks.picker.git_stash() end";
      options.desc = "Git Stash";
    }
    {
      mode = "n";
      key = "<leader>gd";
      action.__raw = "function() Snacks.picker.git_diff() end";
      options.desc = "Git Diff (Hunks)";
    }
    {
      mode = "n";
      key = "<leader>gf";
      action.__raw = "function() Snacks.picker.git_log_file() end";
      options.desc = "Git Log File";
    }
    # Grep
    {
      mode = "n";
      key = "<leader>sb";
      action.__raw = "function() Snacks.picker.lines() end";
      options.desc = "Buffer Lines";
    }
    {
      mode = "n";
      key = "<leader>sB";
      action.__raw = "function() Snacks.picker.grep_buffers() end";
      options.desc = "Grep Open Buffers";
    }
    {
      mode = "n";
      key = "<leader>sg";
      action.__raw = "function() Snacks.picker.grep() end";
      options.desc = "Grep";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>sw";
      action.__raw = "function() Snacks.picker.grep_word() end";
      options.desc = "Visual selection or word";
    }
    # search
    {
      mode = "n";
      key = "<leader>s\"";
      action.__raw = "function() Snacks.picker.registers() end";
      options.desc = "Registers";
    }
    {
      mode = "n";
      key = "<leader>s/";
      action.__raw = "function() Snacks.picker.search_history() end";
      options.desc = "Search History";
    }
    {
      mode = "n";
      key = "<leader>sa";
      action.__raw = "function() Snacks.picker.autocmds() end";
      options.desc = "Autocmds";
    }
    {
      mode = "n";
      key = "<leader>sc";
      action.__raw = "function() Snacks.picker.command_history() end";
      options.desc = "Command History";
    }
    {
      mode = "n";
      key = "<leader>sC";
      action.__raw = "function() Snacks.picker.commands() end";
      options.desc = "Commands";
    }
    {
      mode = "n";
      key = "<leader>sd";
      action.__raw = "function() Snacks.picker.diagnostics() end";
      options.desc = "Diagnostics";
    }
    {
      mode = "n";
      key = "<leader>sD";
      action.__raw = "function() Snacks.picker.diagnostics_buffer() end";
      options.desc = "Buffer Diagnostics";
    }
    {
      mode = "n";
      key = "<leader>sh";
      action.__raw = "function() Snacks.picker.help() end";
      options.desc = "Help Pages";
    }
    {
      mode = "n";
      key = "<leader>sH";
      action.__raw = "function() Snacks.picker.highlights() end";
      options.desc = "Highlights";
    }
    {
      mode = "n";
      key = "<leader>si";
      action.__raw = "function() Snacks.picker.icons() end";
      options.desc = "Icons";
    }
    {
      mode = "n";
      key = "<leader>sj";
      action.__raw = "function() Snacks.picker.jumps() end";
      options.desc = "Jumps";
    }
    {
      mode = "n";
      key = "<leader>sk";
      action.__raw = "function() Snacks.picker.keymaps() end";
      options.desc = "Keymaps";
    }
    {
      mode = "n";
      key = "<leader>sl";
      action.__raw = "function() Snacks.picker.loclist() end";
      options.desc = "Location List";
    }
    {
      mode = "n";
      key = "<leader>sm";
      action.__raw = "function() Snacks.picker.marks() end";
      options.desc = "Marks";
    }
    {
      mode = "n";
      key = "<leader>sM";
      action.__raw = "function() Snacks.picker.man() end";
      options.desc = "Man Pages";
    }
    {
      mode = "n";
      key = "<leader>sp";
      action.__raw = "function() Snacks.picker.lazy() end";
      options.desc = "Search for Plugin Spec";
    }
    {
      mode = "n";
      key = "<leader>sq";
      action.__raw = "function() Snacks.picker.qflist() end";
      options.desc = "Quickfix List";
    }
    {
      mode = "n";
      key = "<leader>sR";
      action.__raw = "function() Snacks.picker.resume() end";
      options.desc = "Resume";
    }
    {
      mode = "n";
      key = "<leader>su";
      action.__raw = "function() Snacks.picker.undo() end";
      options.desc = "Undo History";
    }
    {
      mode = "n";
      key = "<leader>uC";
      action.__raw = "function() Snacks.picker.colorschemes() end";
      options.desc = "Colorschemes";
    }
    # LSP
    # Other
    {
      mode = "n";
      key = "<leader>z";
      action.__raw = "function() Snacks.zen() end";
      options.desc = "Toggle Zen Mode";
    }
    {
      mode = "n";
      key = "<leader>Z";
      action.__raw = "function() Snacks.zen.zoom() end";
      options.desc = "Toggle Zoom";
    }
    {
      mode = "n";
      key = "<leader>.";
      action.__raw = "function() Snacks.scratch() end";
      options.desc = "Toggle Scratch Buffer";
    }
    {
      mode = "n";
      key = "<leader>S";
      action.__raw = "function() Snacks.scratch.select() end";
      options.desc = "Select Scratch Buffer";
    }
    {
      mode = "n";
      key = "<leader>bd";
      action.__raw = "function() Snacks.bufdelete() end";
      options.desc = "Delete Buffer";
    }
    {
      mode = "n";
      key = "<leader>cR";
      action.__raw = "function() Snacks.rename.rename_file() end";
      options.desc = "Rename File";
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>gB";
      action.__raw = "function() Snacks.gitbrowse() end";
      options.desc = "Git Browse";
    }
    {
      mode = "n";
      key = "<leader>gg";
      action.__raw = "function() Snacks.lazygit() end";
      options.desc = "Lazygit";
    }
    {
      mode = "n";
      key = "<leader>un";
      action.__raw = "function() Snacks.notifier.hide() end";
      options.desc = "Dismiss All Notifications";
    }
    {
      mode = "n";
      key = "<C-/>";
      action.__raw = "function() Snacks.terminal() end";
      options.desc = "Toggle Terminal";
    }
    {
      mode = "t";
      key = "<C-/>";
      action = "<cmd>close<cr>";
      options = {
        desc = "Hide Terminal";
      };
    }
    {
      mode = "n";
      key = "<C-_>";
      action.__raw = "function() Snacks.terminal() end";
      options.desc = "which_key_ignore";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "]]";
      action.__raw = "function() Snacks.words.jump(vim.v.count1) end";
      options.desc = "Next Reference";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "[[";
      action.__raw = "function() Snacks.words.jump(-vim.v.count1) end";
      options.desc = "Prev Reference";
    }
  ];
}
