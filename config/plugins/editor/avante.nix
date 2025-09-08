{
  plugins = {
    avante = {
      enable = true;
      settings = {
        provider = "openai";
        auto_suggestion_provider = "openai";
        providers = {
          openai = {
            endpoint = "https://api.deepseek.com";
            model = "deepseek-coder";
          };
          moonshot = {
            endpoint = "https://api.moonshot.ai/v1";
            model = "kimi-k2-0905-preview";
            timeout = 30000;
            extra_request_body = {
              temperature = 0.75;
              max_tokens = 32768;
            };
          };
        };
        behaviour = {
          auto_suggestions = false; # Experimental stage
          auto_set_highlight_group = true;
          auto_set_keymaps = true;
          auto_apply_diff_after_generation = false;
          support_paste_from_clipboard = false;
          minimize_diff = true; # Whether to remove unchanged lines when applying a code block
          enable_token_counting = true; # Whether to enable token counting. Default to true.
          auto_approve_tool_permissions = false; # Default: show permission prompts for all tools
          # auto_approve_tool_permissions = true; # Auto-approve all tools (no prompts)
          # auto_approve_tool_permissions = {"bash", "replace_in_file"}, # Auto-approve specific tools only
        };
        suggestion = {
          debounce = 600;
          throttle = 600;
        };
        selector = {
          provider = "fzf";
          provider_opts = { };
        };
        input = {
          provider = "snacks";
          provider_opts = {
            title = "Avante Input";
            icon = " ";
          };
        };
      };
    };
  };
}
