{
  pkgs,
  lib,
  config,
  ...
}:
{
  plugins.snacks = {
    enable = true;
    autoLoad = true;
    settings = {
      dashboard = {
        sections = [
          {
            header = ''
              ███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗
              ████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║
              ██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║
              ██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║
              ██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
              ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
            '';
          }
          {
            icon = " ";
            title = "Keymaps";
            section = "keys";
            gap = 1;
            padding = 1;
          }
          {
            icon = " ";
            title = "Recent Files";
            section = "recent_files";
            cwd = true;
            gap = 1;
            padding = 1;
          }
          {
            icon = " ";
            title = "Projects";
            section = "projects";
            gap = 1;
            padding = 1;
          }
          {
            pane = 1;
            icon = " ";
            desc = "Browse Repo";
            padding = 1;
            key = "b";
            action.__raw = ''
              function()
                Snacks.gitbrowse()
              end'';
          }
        ];
      };

      bigfile = { enabled = true; };
      explorer = { enabled = true; };
      indent = { enabled = true; };
      input = { enabled = true; };
      notifier = { enabled = true; timeout = 3000; style = "compact"; };
      picker = { enabled = true; };
      quickfile = { enabled = true; };
      scope = { enabled = true; };
      scroll = { enabled = true; };
      statuscolumn = { enabled = true; };
      words = { enabled = true; };
      dim = { enabled = true; };
      image = { enabled = true; };
      terminal = { enabled = true; };
      lazygit = { enabled = true; };
      zen = { enabled = true; };
      scratch = { enabled = true; };
      rename = { enabled = true; };
    };
  };

  keymaps = [
    # ── Picker（取代 fzf-lua） ──
    { mode = "n"; key = "<leader><leader>"; action.__raw = "function() Snacks.picker.smart() end";     options.desc = "Smart Find Files"; }
    { mode = "n"; key = "<leader>/";        action.__raw = "function() Snacks.picker.grep() end";      options.desc = "Grep"; }
    { mode = "n"; key = "<leader>fg";        action.__raw = "function() Snacks.picker.grep() end";      options.desc = "Grep"; }
    { mode = "n"; key = "<leader>ff";        action.__raw = "function() Snacks.picker.files() end";     options.desc = "Find Files"; }
    { mode = "n"; key = "<leader>fb";        action.__raw = "function() Snacks.picker.buffers() end";   options.desc = "Buffers"; }
    { mode = "n"; key = "<leader>fc";        action.__raw = "function() Snacks.picker.git_files() end"; options.desc = "Git Files"; }
    { mode = "n"; key = "<leader>fh";        action.__raw = "function() Snacks.picker.help() end";      options.desc = "Help Pages"; }
    { mode = "n"; key = "<leader>fr";        action.__raw = "function() Snacks.picker.recent() end";    options.desc = "Recent Files"; }
    { mode = "n"; key = "<leader>sr";        action.__raw = "function() Snacks.picker.grep() end";      options.desc = "Grep"; }

    # ── Picker 新增快捷 ──
    { mode = "n"; key = "<leader>,";         action.__raw = "function() Snacks.picker.buffers() end";           options.desc = "Buffers"; }
    { mode = "n"; key = "<leader>:";         action.__raw = "function() Snacks.picker.command_history() end";   options.desc = "Command History"; }
    { mode = "n"; key = "<leader>sd";        action.__raw = "function() Snacks.picker.diagnostics() end";       options.desc = "Diagnostics"; }
    { mode = "n"; key = "<leader>sD";        action.__raw = "function() Snacks.picker.diagnostics_buffer() end"; options.desc = "Buffer Diagnostics"; }
    { mode = "n"; key = "<leader>sk";        action.__raw = "function() Snacks.picker.keymaps() end";          options.desc = "Keymaps"; }
    { mode = "n"; key = "<leader>sq";        action.__raw = "function() Snacks.picker.qflist() end";           options.desc = "Quickfix List"; }
    { mode = "n"; key = "<leader>sp";        action.__raw = "function() Snacks.picker.lazy() end";             options.desc = "Plugin Spec"; }

    # ── Terminal（取代 toggleterm） ──
    { mode = "n"; key = "<C-/>";    action.__raw = "function() Snacks.terminal() end";                       options.desc = "Toggle Terminal"; }
    { mode = "i"; key = "<C-/>";    action.__raw = "function() Snacks.terminal() end";                       options.desc = "Toggle Terminal"; }
    { mode = "t"; key = "<C-/>";    action.__raw = "function() Snacks.terminal() end";                       options.desc = "Toggle Terminal"; }
    { mode = "v"; key = "<C-/>";    action.__raw = "function() Snacks.terminal() end";                       options.desc = "Toggle Terminal"; }
    { mode = "n"; key = "<C-S-/>";  action.__raw = "function() Snacks.terminal({position='float'}) end";    options.desc = "Toggle Float Terminal"; }
    { mode = "i"; key = "<C-S-/>";  action.__raw = "function() Snacks.terminal({position='float'}) end";    options.desc = "Toggle Float Terminal"; }
    { mode = "t"; key = "<C-S-/>";  action.__raw = "function() Snacks.terminal({position='float'}) end";    options.desc = "Toggle Float Terminal"; }
    { mode = "v"; key = "<C-S-/>";  action.__raw = "function() Snacks.terminal({position='float'}) end";    options.desc = "Toggle Float Terminal"; }
    { mode = "n"; key = "<leader>tt";  action.__raw = "function() Snacks.terminal() end";                    options.desc = "Toggle Terminal"; }
    { mode = "n"; key = "<leader>tf";  action.__raw = "function() Snacks.terminal({position='float'}) end"; options.desc = "Toggle Float Terminal"; }
    { mode = "n"; key = "<leader>T";   action.__raw = "function() Snacks.terminal() end";                    options.desc = "Toggle Terminal"; }

    # ── Explorer（取代 neo-tree） ──
    { mode = "n"; key = "<leader>e";  action.__raw = "function() Snacks.explorer() end"; options.desc = "File Explorer"; }

    # ── LazyGit（取代 lazygit.nvim） ──
    { mode = "n"; key = "<leader>gg"; action.__raw = "function() Snacks.lazygit() end"; options.desc = "LazyGit"; }
    { mode = "n"; key = "<leader>gf"; action.__raw = "function() Snacks.lazygit() end"; options.desc = "LazyGit"; }

    # ── Words（取代 trouble 的 ]]/[[） ──
    { mode = "n"; key = "]]"; action.__raw = "function() Snacks.words.jump(vim.v.count1) end";  options.desc = "Next Reference"; }
    { mode = "n"; key = "[["; action.__raw = "function() Snacks.words.jump(-vim.v.count1) end"; options.desc = "Prev Reference"; }

    # ── 新增功能鍵 ──
    { mode = "n"; key = "<leader>z";  action.__raw = "function() Snacks.zen() end";          options.desc = "Toggle Zen Mode"; }
    { mode = "n"; key = "<leader>Z";  action.__raw = "function() Snacks.zen.zoom() end";     options.desc = "Toggle Zoom"; }
    { mode = "n"; key = "<leader>.";  action.__raw = "function() Snacks.scratch() end";      options.desc = "Toggle Scratch Buffer"; }
    { mode = "n"; key = "<leader>cR"; action.__raw = "function() Snacks.rename.rename_file() end"; options.desc = "Rename File"; }
    { mode = "n"; key = "<leader>un"; action.__raw = "function() Snacks.notifier.hide() end"; options.desc = "Dismiss All Notifications"; }
    { mode = "n"; key = "<leader>gB"; action.__raw = "function() Snacks.gitbrowse() end";     options.desc = "Git Browse"; }
  ];

  extraConfigLua = ''
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
        Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
        Snacks.toggle.diagnostics():map("<leader>ud")
        Snacks.toggle.line_number():map("<leader>ul")
        Snacks.toggle.option("conceallevel", { off = 0, on = 2 }):map("<leader>uc")
        Snacks.toggle.treesitter():map("<leader>uT")
        Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub")
        Snacks.toggle.inlay_hints():map("<leader>uh")
        Snacks.toggle.indent():map("<leader>ug")
        Snacks.toggle.dim():map("<leader>uD")
      end,
    })
  '';
}
