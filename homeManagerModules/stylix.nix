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
      ghostty.enable = false;
      firefox.profileNames = [ "narayan" ];
    };
  };
}
