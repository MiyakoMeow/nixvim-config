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
    rustaceanvim = {
      enable = true;
      settings = {
        server = {
          default_settings = {
            rust-analyzer = {
              checkOnSave = true;
              check = {
                command = "clippy";
              };
              diagnostics = {
                enable = true;
              };
              cargo = {
                allFeatures = true;
              };
              procMacro = {
                enable = true;
              };
            };
          };
        };
      };
    };
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        # C/C++
        clangd = {
          enable = true;
          cmd = [ "clangd" ];
          filetypes = [
            "c"
            "cpp"
            "objc"
            "objcpp"
          ];
        };

        # Nix
        nixd = {
          enable = true;
          cmd = [ "nixd" ];
          filetypes = [ "nix" ];
          settings = {
            nixd = {
              formatting = {
                command = [ "nixfmt" ];
              };
              options = {
                nixos = {
                  expr = "(builtins.getFlake \"/home/miyakomeow/Codes/nixvim-config\").nixosConfigurations.default.options";
                };
                home-manager = {
                  expr = "(builtins.getFlake \"/home/miyakomeow/Codes/nixvim-config\").homeConfigurations.default.options";
                };
              };
            };
          };
        };

        # Lua
        lua_ls = {
          enable = true;
          cmd = [ "lua-language-server" ];
          filetypes = [ "lua" ];
          settings = {
            Lua = {
              runtime = {
                version = "LuaJIT";
              };
              diagnostics = {
                globals = [ "vim" ];
              };
              workspace = {
                library = [
                  "\${3rd}/luv/library"
                  "\${3rd}/busted/library"
                ];
                checkThirdParty = false;
              };
              telemetry = {
                enable = false;
              };
            };
          };
        };

        # Vim script
        vimls = {
          enable = true;
          cmd = [ "vim-language-server" ];
          filetypes = [ "vim" ];
        };

        # Python
        pyright = {
          enable = true;
          cmd = [
            "pyright-langserver"
            "--stdio"
          ];
          filetypes = [ "python" ];
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true;
                diagnosticMode = "workspace";
                useLibraryCodeForTypes = true;
              };
            };
          };
        };

        # Additional LSP servers
        html = {
          enable = true;
        };

        ts_ls = {
          enable = true;
        };

        marksman = {
          enable = true;
        };

        gopls = {
          enable = true;
        };

        terraformls = {
          enable = true;
        };

        ansiblels = {
          enable = true;
        };

        jsonls = {
          enable = true;
          cmd = [
            "vscode-json-language-server"
            "--stdio"
          ];
          filetypes = [
            "json"
            "jsonc"
          ];
        };

        helm_ls = {
          enable = true;
          extraOptions = {
            settings = {
              "helm_ls" = {
                yamlls = {
                  path = "${pkgs.yaml-language-server}/bin/yaml-language-server";
                };
              };
            };
          };
        };

        yamlls = {
          enable = true;
          extraOptions = {
            settings = {
              yaml = {
                schemas = {
                  kubernetes = "*.yaml";
                  "http://json.schemastore.org/github-workflow" = ".github/workflows/*";
                  "http://json.schemastore.org/github-action" = ".github/action.{yml,yaml}";
                  "http://json.schemastore.org/ansible-stable-2.9" = "roles/tasks/*.{yml,yaml}";
                  "http://json.schemastore.org/kustomization" = "kustomization.{yml,yaml}";
                  "http://json.schemastore.org/ansible-playbook" = "*play*.{yml,yaml}";
                  "http://json.schemastore.org/chart" = "Chart.{yml,yaml}";
                  "https://json.schemastore.org/dependabot-v2" = ".github/dependabot.{yml,yaml}";
                  "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json" =
                    "*docker-compose*.{yml,yaml}";
                  "https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json" =
                    "*flow*.{yml,yaml}";
                };
              };
            };
          };
        };

        bashls = {
          enable = true;
          cmd = [
            "bash-language-server"
            "start"
          ];
          filetypes = [
            "sh"
            "bash"
          ];
        };
      };

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

  extraConfigLua = ''
    local _border = "rounded"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }

    -- LSP UI enhancements
    local signs = {
      Error = "󰅚 ",
      Warn = "󰀪 ",
      Hint = "󰌶 ",
      Info = "󰋽 "
    }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
  '';
}
