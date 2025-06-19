{
  inputs,
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs; [inputs.ghostty.packages.x86_64-linux.default];

  xdg.configFile."ghostty/config".text = ''
    theme = ayu
    font-family = Ubuntu Sans Font
    font-size = 12
    font-feature = calt
    font-feature = ss03 
  '';
}
