{
  plugins.avante = {
    enable = true;
    settings = {
      mappings = {
        diff = {
          both = "cb";
          next = "]x";
          none = "c0";
          ours = "co";
          prev = "[x";
          theirs = "ct";
        };
        jump = {
          next = "]]";
          prev = "[[";
        };
      };
      provider = "deepseek";
      auto_suggestions_provider = "deepseek";
      providers = {
        deepseek = {
          endpoint = "https://api.deepseek.com/v1";
          model = "deepseek-coder"; # your desired model (or use gpt-4o, etc.)
          extra_request_body = {
            timeout = 30000; # Timeout in milliseconds, increase this for reasoning models
            temperature = 0;
            # max_completion_tokens = 8192,
            # Increase this to include reasoning tokens (for reasoning models)
            # reasoning_effort = "medium",
            # low|medium|high, only used for reasoning models
          };
        };
      };
    };
  };
}
