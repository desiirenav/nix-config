{
  inputs,
  pkgs,
  config,
  ...
}: {
  programs.ghostty = {
    enable = true;
  };
}
