{
  pkgs,
  lib,
  ...
}: {
  stylix = {
    autoEnable = true;
    enable = true;
    targets = {
      starship.enable = false;
      qt.enable = false;
    };
  };
}
