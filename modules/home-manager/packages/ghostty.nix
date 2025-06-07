{
  inputs,
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs; [inputs.ghostty.packages.x86_64-linux.default];

  xdg.configFile."ghostty/config".text = ''
    theme = rose-pine-dawn
    font-size = 12
    font-thicken = true
  '';
}
