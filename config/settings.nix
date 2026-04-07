{
  config = {
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
    expandtab = true;
    shiftwidth = 4;
    tabstop = 4;
    softtabstop = 0;
    smarttab = true;
  };

  config.globals = {
    mapleader = " ";
  };
}
