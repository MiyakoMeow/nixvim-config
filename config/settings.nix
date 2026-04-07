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
    # Indentation
    expandtab = true;
    shiftwidth = 4;
    tabstop = 4;
    softtabstop = 0;
    smarttab = true;

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
