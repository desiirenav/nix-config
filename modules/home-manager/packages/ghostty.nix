{
  inputs,
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs; [inputs.ghostty.packages.x86_64-linux.default];

  xdg.configFile."ghostty/config".text = ''
    theme = rose-pine-dawn
    font-family = Liga SFMono Nerd Font
    font-size = 12
    font-thicken = true
  '';
}
