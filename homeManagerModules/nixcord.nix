{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.nixcord.homeModules.nixcord];

  programs.nixcord = {
    enable = true; # enable Nixcord. Also installs discord package
    config = {
      useQuickCss = true; # use out quickCSS
      themeLinks = [
      ];
      frameless = true; # set some Vencord options
    };
  };
  # ...
}
