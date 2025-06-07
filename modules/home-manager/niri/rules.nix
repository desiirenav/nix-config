{
  inputs,
  pkgs,
  config,
  lib,
  ...
}: {
  programs.niri.settings = {
    window-rules = [
      {
        geometry-corner-radius = {
          bottom-left = 1.0;
          bottom-right = 1.0;
          top-left = 1.0;
          top-right = 1.0;
        };
        clip-to-geometry = true;
      }
    ];
  };
}
