{ config, lib, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    terminal = "${pkgs.kitty}/bin/kitty";
    package = pkgs.rofi-wayland;   
  };
}
