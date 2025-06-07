{
  config,
  pkgs,
  inputs,
  system,
  ...
}: {
  imports = [
    ./../modules/home-manager/shell/shell.nix
    ./../modules/home-manager/niri/default.nix
    ./../modules/home-manager/packages/ghostty.nix
    ./../modules/home-manager/packages/nixcord.nix
    ./../modules/home-manager/packages/anyrun.nix
  ];

  home.username = "narayan";
  home.homeDirectory = "/home/narayan";

  home.stateVersion = "25.05";

  home.packages = [
  ];

  programs.git = {
    enable = true;
    userName = "desiirenav";
    userEmail = "desiirenav@hotmail.com";
  };

  nixpkgs.config.allowUnfree = true;

  programs.nushell = {
    enable = true;
  };

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
