{
  keymaps = [
    {
      mode = "n";
      key = "<leader>uw";
      action = "<cmd>lua vim.wo.wrap = not vim.wo.wrap<cr>";
      options = {
        desc = "Toggle Wrap";
      };
    }
    {
      mode = "n";
      key = "<leader>uL";
      action = "<cmd>lua vim.wo.relativenumber = not vim.wo.relativenumber<cr>";
      options = {
        desc = "Toggle Relative Number";
      };
    }
    {
      mode = "n";
      key = "<leader>ul";
      action = "<cmd>lua vim.wo.number = not vim.wo.number<cr>";
      options = {
        desc = "Toggle Line Number";
      };
    }
    {
      mode = "n";
      key = "<leader>ud";
      action = "<cmd>lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<cr>";
      options = {
        desc = "Toggle Diagnostics";
      };
    }
    {
      mode = "n";
      key = "<leader>uh";
      action = "<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 }))<cr>";
      options = {
        desc = "Toggle Inlay Hints";
      };
    }
    {
      mode = "n";
      key = "<leader>uc";
      action = "<cmd>lua vim.wo.conceallevel = vim.wo.conceallevel == 0 and 2 or 0<cr>";
      options = {
        desc = "Toggle Conceal";
      };
    }
    {
      mode = "n";
      key = "<leader>us";
      action = "<cmd>lua vim.wo.spell = not vim.wo.spell<cr>";
      options = {
        desc = "Toggle Spelling";
      };
    }
    {
      mode = "n";
      key = "<leader>ur";
      action = "<cmd>nohlsearch<cr><cmd>diffupdate<cr><cmd>normal! <C-L><cr>";
      options = {
        desc = "Redraw / Clear hlsearch";
      };
    }
  ];
}
