{
  config,
  lib,
  pkgs,
  inputs,
  system,
  ...
}: {
  imports = [
    ./../../homeManagerModules/niri/default.nix
    ./../../homeManagerModules/nixcord.nix
    ./../../homeManagerModules/fuzzel.nix
    ./../../homeManagerModules/kitty.nix
    ./../../homeManagerModules/nixcord.nix
    ./../../homeManagerModules/firefox.nix
    ./../../homeManagerModules/stylix.nix
  ];

  home.username = "narayan";
  home.homeDirectory = "/home/narayan";

  home.stateVersion = "25.11";

  home.packages = [
  ];

  programs.git = {
    enable = true;
    userName = "desiirenav";
    userEmail = "desiirenav@hotmail.com";
  };

  nixpkgs.config.allowUnfree = true;

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
