{
  inputs,
  pkgs,
  config,
  lib,
  ...
}: let
  wallpaper = "${./../stylix/nord.jpg}";
  colors = config.lib.stylix.colors.withHashtag;
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
        gaps = 0;
        focus-ring.enable = false;
        border = {
          enable = true;
          width = 3;
        };
        shadow = {
          enable = false;
        };
      };
      spawn-at-startup = [
        {
          command = ["xwayland-satellite"];
        }
        {
          command = ["swaybg" "-m" "fill" "-i" wallpaper];
        }
        {
          command = ["dunst"];
        }
      ];
    };
  };
}
