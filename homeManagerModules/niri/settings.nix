{
  inputs,
  pkgs,
  config,
  lib,
  ...
}: let
  wallpaper = "${./../stylix/nix.png}";
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
        gaps = 9;
        focus-ring.enable = false;
        border = {
          enable = true;
          width = 1.5;
          active.gradient = {
            from = colors.base03;
            to = colors.base03;
          };
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
          command = ["swaybg" "-m" "fill" "-i" wallpaper];
        }
        {
          command = ["dunst"];
        }
      ];
    };
  };
}
