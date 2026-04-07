{ pkgs, ... }:
{
  plugins.lsp.servers.helm_ls = {
    enable = true;
    extraOptions = {
      settings = {
        "helm_ls" = {
          yamlls = {
            path = "${pkgs.yaml-language-server}/bin/yaml-language-server";
          };
        };
      };
    };
  };
}
