{
  plugins.dap = {
    enable = true;

    # DAP UI
    signs = {
      dapBreakpoint = {
        text = "●";
        texthl = "DapBreakpoint";
      };
      dapBreakpointCondition = {
        text = "●";
        texthl = "DapBreakpointCondition";
      };
      dapLogPoint = {
        text = "◆";
        texthl = "DapLogPoint";
      };
      dapStopped = {
        text = "󰁕";
        texthl = "DapStopped";
        linehl = "DapStopped";
        numhl = "DapStopped";
      };
    };
  };

  # DAP UI
  plugins.dap-ui = {
    enable = true;

    settings = {
      controls = {
        element = "repl";
        enabled = true;
        icons = {
          disconnect = "";
          pause = "";
          play = "";
          run_last = "";
          step_back = "";
          step_into = "";
          step_out = "";
          step_over = "";
          terminate = "";
        };
      };

      floating = {
        border = "single";
        mappings = {
          close = [
            "q"
            "esc"
          ];
        };
      };

      icons = {
        collapsed = "";
        current_frame = "";
        expanded = "";
      };

      layouts = [
        {
          elements = [
            {
              id = "scopes";
              size = 0.25;
            }
            {
              id = "breakpoints";
              size = 0.25;
            }
            {
              id = "stacks";
              size = 0.25;
            }
            {
              id = "watches";
              size = 0.25;
            }
          ];
          position = "left";
          size = 40;
        }
        {
          elements = [
            {
              id = "repl";
              size = 0.5;
            }
            {
              id = "console";
              size = 0.5;
            }
          ];
          position = "bottom";
          size = 10;
        }
      ];

      mappings = {
        edit = "e";
        expand = [
          "<CR>"
          "<2-LeftMouse>"
        ];
        open = "o";
        remove = "d";
        repl = "r";
        toggle = "t";
      };

      render = {
        indent = 1;
      };
    };
  };

  # DAP Virtual Text
  plugins.dap-virtual-text = {
    enable = true;
  };

  # DAP configurations
  plugins.dap.configurations = {
    # C/C++ configurations
    c = [
      {
        name = "Launch file";
        type = "codelldb";
        request = "launch";
        program.__raw = "function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end";
        cwd.__raw = "function() return vim.fn.getcwd() end";
        stopAtEntry = false;
        externalConsole = false;
      }
    ];

    cpp = [
      {
        name = "Launch file";
        type = "codelldb";
        request = "launch";
        program.__raw = "function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end";
        cwd.__raw = "function() return vim.fn.getcwd() end";
        stopAtEntry = false;
        externalConsole = false;
      }
    ];

    # Python configurations
    python = [
      {
        type = "debugpy";
        request = "launch";
        name = "Launch file";
        program.__raw = "function() return vim.fn.expand('%:p') end";
        pythonPath.__raw = "function() return 'python' end";
      }
    ];

    # Lua configurations
    lua = [
      {
        name = "Current file (local-lua-debugger-vscode)";
        type = "local-lua-debugger-vscode";
        request = "launch";
        cwd.__raw = "function() return vim.fn.getcwd() end";
        program.__raw = "function() return vim.fn.expand('%:p') end";
        args = [ ];
      }
    ];

    # Nix configurations (using codelldb)
    nix = [
      {
        name = "Launch Nix executable";
        type = "codelldb";
        request = "launch";
        program.__raw = "function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end";
        cwd.__raw = "function() return vim.fn.getcwd() end";
        stopAtEntry = false;
        externalConsole = false;
      }
    ];
  };

  # DAP keymaps
  keymaps = [
    # DAP basic controls
    {
      mode = "n";
      key = "<F5>";
      action = "<cmd>DapContinue<cr>";
      options = {
        desc = "Start/Continue Debug";
      };
    }
    {
      mode = "n";
      key = "<F10>";
      action = "<cmd>DapStepOver<cr>";
      options = {
        desc = "Step Over";
      };
    }
    {
      mode = "n";
      key = "<F11>";
      action = "<cmd>DapStepInto<cr>";
      options = {
        desc = "Step Into";
      };
    }
    {
      mode = "n";
      key = "<F12>";
      action = "<cmd>DapStepOut<cr>";
      options = {
        desc = "Step Out";
      };
    }
    {
      mode = "n";
      key = "<F9>";
      action = "<cmd>DapToggleBreakpoint<cr>";
      options = {
        desc = "Toggle Breakpoint";
      };
    }
    {
      mode = "n";
      key = "<leader>db";
      action = "<cmd>DapToggleBreakpoint<cr>";
      options = {
        desc = "Toggle Breakpoint";
      };
    }
    {
      mode = "n";
      key = "<leader>dB";
      action.__raw = "function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end";
      options = {
        desc = "Conditional Breakpoint";
      };
    }
    {
      mode = "n";
      key = "<leader>dc";
      action = "<cmd>DapContinue<cr>";
      options = {
        desc = "Continue";
      };
    }
    {
      mode = "n";
      key = "<leader>di";
      action = "<cmd>DapStepInto<cr>";
      options = {
        desc = "Step Into";
      };
    }
    {
      mode = "n";
      key = "<leader>do";
      action = "<cmd>DapStepOver<cr>";
      options = {
        desc = "Step Over";
      };
    }
    {
      mode = "n";
      key = "<leader>dO";
      action = "<cmd>DapStepOut<cr>";
      options = {
        desc = "Step Out";
      };
    }
    {
      mode = "n";
      key = "<leader>dr";
      action = "<cmd>DapToggleRepl<cr>";
      options = {
        desc = "Toggle REPL";
      };
    }
    {
      mode = "n";
      key = "<leader>dl";
      action.__raw = "function() require('dap').run_last() end";
      options = {
        desc = "Run Last";
      };
    }
    {
      mode = "n";
      key = "<leader>dt";
      action = "<cmd>DapTerminate<cr>";
      options = {
        desc = "Terminate";
      };
    }
    {
      mode = "n";
      key = "<leader>du";
      action.__raw = "function() require('dapui').toggle() end";
      options = {
        desc = "Toggle UI";
      };
    }
    {
      mode = "n";
      key = "<leader>de";
      action.__raw = "function() require('dapui').eval() end";
      options = {
        desc = "Evaluate Expression";
      };
    }
    {
      mode = "v";
      key = "<leader>de";
      action.__raw = "function() require('dapui').eval() end";
      options = {
        desc = "Evaluate Expression";
      };
    }
    {
      mode = "n";
      key = "<leader>dE";
      action.__raw = "function() require('dapui').eval(vim.fn.input('Expression: ')) end";
      options = {
        desc = "Evaluate Input";
      };
    }
  ];
}
