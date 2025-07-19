{
  config,
  lib,
  pkgs,
  inputs,
  system,
  ...
}: {
  imports = [
    ./../../modules/home-manager/niri.nix
    ./../../modules/home-manager/nixcord.nix
    ./../../modules/home-manager/fuzzel.nix
    ./../../modules/home-manager/kitty.nix
    ./../../modules/home-manager/nixcord.nix
    ./../../modules/home-manager/firefox.nix
    ./../../modules/home-manager/stylix.nix
    ./../../modules/home-manager/tmux.nix
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
