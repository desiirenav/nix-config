{
  inputs,
  pkgs,
  config,
  lib,
  ...
}: {
  imports = [
    inputs.niri.homeModules.niri
    inputs.niri.homeModules.stylix
    ./binds.nix
    ./rules.nix
    ./settings.nix
  ];

  home.packages = with pkgs; [
    xwayland-satellite
    brightnessctl
    swaybg
    dunst
    nautilus
  ];
}
