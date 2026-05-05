{
  # Global indent defaults (spaces, 2-space fallback).
  config.opts = {
    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;
    softtabstop = -1;
    smarttab = true;
  };

  # Per-filetype overrides for langs that differ from the default.
  autoCmd = [
    {
      event = [ "FileType" ];
      pattern = [
        "c"
        "cpp"
        "cs"
        "cuda"
        "java"
        "kotlin"
        "objc"
        "objcpp"
        "perl"
        "php"
        "python"
        "rust"
      ];
      # 4 spaces: C/C++ ecosystem, C#, CUDA, Java, Kotlin, PEP 8,
      # Perl, PSR-2 (PHP), rustfmt default
      command = "setlocal shiftwidth=4 tabstop=4 softtabstop=4";
    }
  ];
}
