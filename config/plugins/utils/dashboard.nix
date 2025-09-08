{
  plugins.dashboard = {
    enable = true;

    settings = {
      theme = "hyper";
      config = {
        week_header.enable = true;
        project = {
          enable = true;
          limit = 8;
          icon = "";
          label = " Recent Projects";
          action = "FzfLua files cwd=";
        };
        mru.enable = true;
        packages.enable = false;
        shortcut = [
          {
            desc = " Find Files";
            group = "DashboardShortcut";
            action = "FzfLua files";
            key = "f";
          }
          {
            desc = "󰱼 Live Grep";
            group = "DashboardShortcut";
            action = "FzfLua live_grep";
            key = "g";
          }
          {
            desc = " Recent Files";
            group = "DashboardShortcut";
            action = "FzfLua oldfiles";
            key = "r";
          }
          {
            desc = " Git Files";
            group = "DashboardShortcut";
            action = "FzfLua git_files";
            key = "p";
          }
          {
            desc = "󰏖 Git Status";
            group = "DashboardShortcut";
            action = "FzfLua git_status";
            key = "s";
          }
          {
            desc = "󰏗 Git Commits";
            group = "DashboardShortcut";
            action = "FzfLua git_commits";
            key = "c";
          }
        ];
        footer = [ "🚀 Let's code!" ];
      };
    };
  };
}
