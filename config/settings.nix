{
  config = {
    extraConfigLuaPre =
      # lua
      ''
        vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticerror", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticwarn", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignhint", { text = "󰌵", texthl = "diagnostichint", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticinfo", linehl = "", numhl = "" })

        -- Shell configuration
        if os.execute("nu --version") == 0 then
          -- nu
          vim.opt.shell = "nu"
          vim.opt.shellcmdflag = "-c"
        elseif vim.fn.has("win32") == 1 and os.execute("pwsh --version") == 0 then
          -- pwsh (Powershell 7)
          vim.opt.shell = "pwsh.exe -NoLogo"
          vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
        end

        -- Neovide configuration
        if vim.g.neovide then
          -- local windows_font = "FiraCode Nerd Font:h14"
          local windows_font = "ComicShannsMono Nerd Font Mono,微软雅黑:h14"
          -- local linux_font = "FiraCode Nerd Font:h12"
          local linux_font = "ComicShannsMono Nerd Font Mono,文泉驿正黑:h14"

          if vim.fn.has("win32") == 1 then
            vim.o.guifont = windows_font
          else
            vim.o.guifont = linux_font
          end

          vim.g.neovide_refresh_rate = 60
          vim.g.neovide_refresh_rate_idle = 1

          vim.g.neovide_opacity = 0.9

          vim.g.neovide_hide_mouse_when_typing = true
          vim.g.neovide_confirm_quit = true

          -- vim.g.neovide_cursor_vfx_mode = "railgun"
          vim.g.neovide_cursor_vfx_mode = "sonicboom"
          vim.g.neovide_cursor_trail_size = 0.5
          vim.g.neovide_cursor_antialiasing = true

          vim.g.neovide_cursor_animation_length = 0.05

          vim.g.neovide_scroll_animation_length = 0.1
          vim.g.neovide_scroll_animation_far_lines = 1

          vim.g.experimental_layer_grouping = true -- If has problems when seeing floating window, set it to false.
          vim.g.neovide_floating_blur_amount_x = 2.0
          vim.g.neovide_floating_blur_amount_y = 2.0

          vim.g.neovide_floating_shadow = true
          vim.g.neovide_floating_z_height = 10
          vim.g.neovide_light_angle_degrees = 45
          vim.g.neovide_light_radius = 5

          vim.g.neovide_confirm_quit = true
          vim.g.neovide_detach_on_quit = "always_quit"

          -- Disable IME when in normal mode.
          local function set_ime(args)
            if args.event:match("Enter$") then
              vim.g.neovide_input_ime = true
            else
              vim.g.neovide_input_ime = false
            end
          end

          local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })

          vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
            group = ime_input,
            pattern = "*",
            callback = set_ime,
          })

          vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
            group = ime_input,
            pattern = "[/\\?]",
            callback = set_ime,
          })
        end
      '';

    clipboard = {
      providers.wl-copy.enable = true;
    };

    opts = {
      # Show line numbers
      number = true;

      # Show relative line numbers
      relativenumber = true;

      # Use the system clipboard
      clipboard = "unnamedplus";

      # Number of spaces that represent a <TAB>
      tabstop = 4;
      softtabstop = 4;

      # Show tabline always
      showtabline = 2;

      # Use spaces instead of tabs
      expandtab = true;

      # Enable smart indentation
      smartindent = true;

      # Number of spaces to use for each step of (auto)indent
      shiftwidth = 4;

      # Enable break indent
      breakindent = true;

      # Highlight the screen line of the cursor
      cursorline = true;

      # Minimum number of screen lines to keep above and below the cursor
      scrolloff = 8;

      # Enable mouse support
      mouse = "a";

      # Set folding method to manual
      foldmethod = "manual";

      # Disable folding by default
      foldenable = false;

      # Wrap long lines at a character in 'breakat'
      linebreak = true;

      # Disable spell checking
      spell = false;

      # Disable swap file creation
      swapfile = false;

      # Time in milliseconds to wait for a mapped sequence to complete
      timeoutlen = 300;

      # Enable 24-bit RGB color in the TUI
      termguicolors = true;

      # Don't show mode in the command line
      showmode = false;

      # Open new split below the current window
      splitbelow = true;

      # Keep the screen when splitting
      splitkeep = "screen";

      # Open new split to the right of the current window
      splitright = true;

      # Hide command line unless needed
      cmdheight = 0;

      # Remove EOB
      fillchars = {
        eob = " ";
      };
    };

    # Performance
    performance = {
      byteCompileLua = {
        enable = true;
        configs = true;
        initLua = true;
        luaLib = true;
        nvimRuntime = true;
        plugins = true;
      };
    };
  };
}
