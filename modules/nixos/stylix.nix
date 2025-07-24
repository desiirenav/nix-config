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
    image = ./../../assets/wallpapers/ayu.png;
    base16Scheme = {
      base00 = "0B0E14";
      base01 = "131721";
      base02 = "272D38";
      base03 = "3E4B59";
      base04 = "BFBDB6";
      base05 = "E6E1CF";
      base06 = "E6E1CF";
      base07 = "F3F4F5";
      base08 = "F07178";
      base09 = "FF8F40";
      base0A = "FFB454";
      base0B = "B8CC52";
      base0C = "95E6CB";
      base0D = "59C2FF";
      base0E = "D2A6FF";
      base0F = "E6B673";
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

