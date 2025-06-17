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
          bottom-left = 9.0;
          bottom-right = 9.0;
          top-left = 9.0;
          top-right = 9.0;
        };
        clip-to-geometry = true;
      }
    ];
  };
}
