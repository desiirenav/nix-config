{
  pkgs,
  config,
  lib,
  inputs,
  ...
}: let
  wallpaper = "${./../../assets/wallpapers/nord.jpg}";
in {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = ["${wallpaper}"];
      wallpaper = ["${wallpaper}"];
    };
  };

}
