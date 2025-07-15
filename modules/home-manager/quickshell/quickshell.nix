{
  config,
  lib,
  pkgs,
  inputs,
  system,
  ...
}: {

  home.packages = with pkgs; [
    inputs.quickshell.packages."${system}".default
  ];
}
