{
  # Auto-detect indent from projects with .editorconfig.
  editorconfig = {
    enable = true;
  };

  # Detect indent settings from existing file content.
  # Covers projects without .editorconfig.
  plugins.sleuth = {
    enable = true;
  };
}
