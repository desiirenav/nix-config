{
  config,
  lib,
  pkgs,
  inputs,
  system,
  ...
}: {

  home.packages = with pkgs; [
    quickshell
  ];

  home.file = {
    ".config/quickshell".source = builtins.toString ./qs;
  };
}
