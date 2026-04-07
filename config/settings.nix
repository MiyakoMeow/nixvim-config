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
    shiftwidth = 4;
    tabstop = 4;
  };

  config.globals = {
    mapleader = " ";
  };
}
