{
  config = {
    # Performance
    performance.byteCompileLua = {
      enable = true;
      configs = true;
      initLua = true;
      luaLib = true;
      nvimRuntime = true;
      plugins = true;
    };
  };

  config.opts = {
    # Encoding
    fileencoding = "utf-8";

    # Scrolling
    scrolloff = 6;
    sidescrolloff = 6;

    # Numbers
    number = true;
    relativenumber = false;
  };

  config.globals = {
    # Leader
    mapleader = " ";
    # Encoding
    encoding = "UTF-8";
  };
}
