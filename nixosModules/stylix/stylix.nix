{
  config,
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.stylix.nixosModules.stylix
  ];

  stylix = {
    autoEnable = true;
    enable = true;
    image = ./night.jpg;
    cursor = {
      package = pkgs.phinger-cursors;
      name = "phinger-cursors-dark";
      size = 22;
    };
    base16Scheme = {
      base00 = "0b0e15";
      base01 = "10141b";
      base02 = "12161d";
      base03 = "646a73";
      base04 = "c0beb7";
      base05 = "e7e2d0";
      base06 = "f0ead8";
      base07 = "f4f5f6";
      base08 = "f07279";
      base09 = "ff9041";
      base0A = "ffb555";
      base0B = "abd94d";
      base0C = "96e6cc";
      base0D = "5ac3ff";
      base0E = "d3a7ff";
      base0F = "e7b774";
    };
    fonts = {
      serif = {
        package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd;
        name = "SFProDisplay Nerd Font";
      };
      sansSerif = {
        package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd;
        name = "SFProDisplay Nerd Font";
      };
      monospace = {
        package = pkgs.sf-mono-liga-bin;
        name = "Liga SFMono Nerd Font";
      };
    };
  };
}

