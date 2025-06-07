{
  pkgs,
  inputs,
  ...
}: {
  programs.fuzzel = {
    enable = true;
  };
}
