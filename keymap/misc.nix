{
  keymaps = [
    {
      mode = [
        "i"
        "n"
        "s"
      ];
      key = "<esc>";
      action = "<cmd>nohlsearch<cr><esc>";
      options = {
        desc = "Escape and Clear hlsearch";
      };
    }
    {
      mode = "n";
      key = "<leader>qq";
      action = "<cmd>qa<cr>";
      options = {
        desc = "Quit All";
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "gx";
      action = "<cmd>lua vim.ui.open(vim.fn.expand('<cfile>'))<cr>";
      options = {
        desc = "Open with System App";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "K";
      action = "<cmd>lua vim.lsp.buf.hover()<cr>";
      options = {
        desc = "Hover Documentation";
      };
    }
  ];
}
