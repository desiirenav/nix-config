{
  inputs,
  pkgs,
  lib,
  system,
  ...
}: {
  imports = [inputs.nix-flatpak.nixosModules.nix-flatpak];
  services = {
    flatpak = {
      enable = true;
      packages = [
      ];
    };
  };  
}
