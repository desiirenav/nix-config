{ config, inputs, pkgs, ... }: {
  imports = [ inputs.matugen.nixosModules.default ];

  programs = {
    matugen = {
      enable = true;
      variant = "dark";
      wallpaper = config.stylix.image;
    };
  };
}
