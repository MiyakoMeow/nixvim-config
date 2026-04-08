{ pkgs, ... }:
{
  plugins = {
    trouble = {
      enable = true;
      autoLoad = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "]]";
      action.__raw = ''
        function()
                if vim.tbl_isempty(vim.lsp.buf.get_active_clients()) then return vim.cmd.normal({ args = { ']]' }, bang = true }) end
                vim.lsp.buf.references()
                require('trouble').open({ focus = false, auto = false })
              end'';
      options = {
        desc = "Next LSP Reference";
      };
    }
    {
      mode = "n";
      key = "[[";
      action.__raw = ''
        function()
                if vim.tbl_isempty(vim.lsp.buf.get_active_clients()) then return vim.cmd.normal({ args = { '[[' }, bang = true }) end
                vim.lsp.buf.references()
                require('trouble').open({ focus = false, auto = false })
              end'';
      options = {
        desc = "Prev LSP Reference";
      };
    }
  ];
}
