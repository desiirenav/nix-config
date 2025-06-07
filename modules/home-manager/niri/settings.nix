{
  inputs,
  pkgs,
  config,
  lib,
  ...
}: let
in {
  programs.niri = {
    settings = {
      screenshot-path = "~/Pictures/Screenshots/%Y-%m-%dT%H:%M:%S.png";
      environment = {
        DISPLAY = ":0";
        NIXOS_OZONE_WL = "1";
      };
      prefer-no-csd = true;
      layout = {
        gaps = 9;
        focus-ring.enable = false;
        border = {
          enable = true;
          active.gradient = {
          };
          width = 3;
        };
        shadow = {
          enable = true;
        };
      };
      spawn-at-startup = [
        {
          command = ["xwayland-satellite"];
        }
        {
          command = ["dunst"];
        }
      ];
    };
  };
}
