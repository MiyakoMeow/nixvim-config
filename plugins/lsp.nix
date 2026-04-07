{ pkgs, ... }:
{
  plugins = {
    lsp-lines = {
      enable = true;
    };
    lsp-format = {
      enable = true;
    };
    helm = {
      enable = true;
    };
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
          K = {
            action = "hover";
            desc = "Hover";
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

  extraPlugins = with pkgs.vimPlugins; [
    ansible-vim
  ];
}
