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
    image = ./clouds.jpg;

    cursor = {
      package = pkgs.rose-pine-cursor;
      name = "BreezeX-RosePineDawn-Linux";
      size = 22;
    };
    base16Scheme = {
      base00 = "faf4ed";
      base01 = "fffaf3";
      base02 = "f2e9de";
      base03 = "9893a5";
      base04 = "797593";
      base05 = "575279";
      base06 = "575279";
      base07 = "cecacd";
      base08 = "b4637a";
      base09 = "ea9d34";
      base0A = "d7827e";
      base0B = "286983";
      base0C = "56949f";
      base0D = "907aa9";
      base0E = "ea9d34";
      base0F = "cecacd";
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
