{
  config,
  pkgs,
  inputs,
  system,
  ...
}: {
  imports = [
    ./../../homeManagerModules/shell/shell.nix
    ./../../homeManagerModules/niri/default.nix
    ./../../homeManagerModules/packages/kitty.nix
    ./../../homeManagerModules/packages/rofi.nix
    ./../../homeManagerModules/packages/nixcord.nix
    ./../../homeManagerModules/packages/fuzzel.nix
    ./../../homeManagerModules/packages/nixcord.nix
    ./../../homeManagerModules/stylix/stylix.nix
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
