{
  lib,
  ...
}:
let
  # 检查plugins目录是否存在
  pluginsDirExists = builtins.trace (
    if lib.pathExists ./plugins then
      "Found plugins directory, starting plugin file scan..."
    else
      "Plugins directory does not exist, skipping plugin scan"
  ) (lib.pathExists ./plugins);

  # 自动扫描plugins目录下的所有.nix文件
  pluginFiles =
    if pluginsDirExists then
      builtins.trace "Scanning plugins directory for files..." (
        lib.filesystem.listFilesRecursive ./plugins
      )
    else
      [ ];

  # 过滤出.nix文件并记录
  nixFiles =
    let
      filtered = lib.filter (file: lib.hasSuffix ".nix" (toString file)) pluginFiles;
    in
    builtins.trace (
      if filtered != [ ] then
        "Found ${toString (builtins.length filtered)} plugin file(s):\n"
        + builtins.concatStringsSep "\n" (
          map (file: "  - " + lib.removePrefix (toString ./plugins) (toString file)) filtered
        )
      else
        "No plugin files found"
    ) filtered;

  # 将文件路径转换为相对于config目录的路径
  relativePaths = map (file: ./. + (lib.removePrefix (toString ./.) (toString file))) nixFiles;

  # 显示最终的导入列表
  finalImports =
    let
      pluginImports =
        if relativePaths != [ ] then
          "\n"
          + builtins.concatStringsSep "\n" (
            map (path: "  - " + lib.removePrefix "./plugins/" (toString path)) relativePaths
          )
        else
          "";
    in
    builtins.trace (
      "Final import list:\n"
      + "Core configuration files:\n"
      + "  - settings.nix\n"
      + "  - keymaps.nix\n"
      + "  - auto_cmds.nix"
      + "  - file_types.nix"
    ) relativePaths;
in
{
  imports = [
    # General Configuration
    ./settings.nix
    ./keymaps.nix
    ./auto_cmds.nix
    ./file_types.nix
  ] ++ finalImports;
}
