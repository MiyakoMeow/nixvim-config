{
  keymaps = [
    {
      mode = "n";
      key = "<leader>wf";
      action = "<cmd>lua for _, w in ipairs(vim.api.nvim_list_wins()) do if vim.api.nvim_win_get_config(w).relative ~= '' then vim.api.nvim_set_current_win(w) end end<CR>";
      options = {
        desc = "Focus floating window";
      };
    }
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
    {
      mode = "n";
      key = "<C-Up>";
      action = "<cmd>resize +2<cr>";
      options = {
        desc = "Increase Window Height";
      };
    }
    {
      mode = "n";
      key = "<C-Down>";
      action = "<cmd>resize -2<cr>";
      options = {
        desc = "Decrease Window Height";
      };
    }
    {
      mode = "n";
      key = "<C-Left>";
      action = "<cmd>vertical resize -2<cr>";
      options = {
        desc = "Decrease Window Width";
      };
    }
    {
      mode = "n";
      key = "<C-Right>";
      action = "<cmd>vertical resize +2<cr>";
      options = {
        desc = "Increase Window Width";
      };
    }
    {
      mode = "n";
      key = "<leader>-";
      action = "<cmd>wincmd s<CR>";
      options = {
        desc = "Split Window Below";
      };
    }
    {
      mode = "n";
      key = "<leader>|";
      action = "<cmd>wincmd v<CR>";
      options = {
        desc = "Split Window Right";
      };
    }
    {
      mode = "n";
      key = "<leader>wd";
      action = "<cmd>close<CR>";
      options = {
        desc = "Delete Window";
      };
    }
  ];
}
