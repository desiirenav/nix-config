{
  lib,
  inputs,
  pkgs,
  config,
  ...
}: {
  programs.ghostty = lib.mkForce {
    enable = true;
    settings = {
      theme = "GruvboxDarkHard";
      font-family = "Liga SFMono Nerd Font";
      font-size = 12;
      font-style = "semibold";
    };
  };
}
