{ pkgs, ... }:
{
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          gy = {
            action = "type_definition";
            desc = "Goto Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          gK = {
            action = "signature_help";
            desc = "Signature Help";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
          "<leader>ca" = {
            action = "code_action";
            desc = "Code Action";
          };
          "<leader>cf" = {
            action = "format";
            desc = "Format";
          };
          "<leader>ls" = {
            action = "signature_help";
            desc = "Signature Help";
          };
          "<leader>co" = {
            action = "code_action";
            desc = "Organize Imports";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
          "[e" = {
            action = "goto_next";
            desc = "severity = vim.diagnostic.severity.ERROR";
          };
          "]e" = {
            action = "goto_prev";
            desc = "severity = vim.diagnostic.severity.ERROR";
          };
          "[w" = {
            action = "goto_next";
            desc = "severity = vim.diagnostic.severity.WARN";
          };
          "]w" = {
            action = "goto_prev";
            desc = "severity = vim.diagnostic.severity.WARN";
          };
        };
      };
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
    {
      mode = "n";
      key = "<leader>ss";
      action = "<cmd>lua vim.lsp.buf.document_symbol()<cr>";
      options = {
        desc = "LSP Document Symbols";
      };
    }
    {
      mode = "n";
      key = "<leader>sS";
      action = "<cmd>lua vim.lsp.buf.workspace_symbol()<cr>";
      options = {
        desc = "LSP Workspace Symbols";
      };
    }
  ];

  extraPlugins = with pkgs.vimPlugins; [
    ansible-vim
  ];
}
