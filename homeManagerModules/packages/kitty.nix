{
  inputs,
  pkgs,
  config,
  lib,
  ...
}: {
  programs.kitty = lib.mkForce {
    enable = true;
  };
}
