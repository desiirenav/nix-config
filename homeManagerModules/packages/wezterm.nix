{
  inputs,
  pkgs,
  config,
  ...
}: {
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
  };
}
