{
  pkgs,
  lib,
  ...
}: {
  stylix = {
    autoEnable = true;
    enable = true;
    targets = {
      firefox.profileNames = [ "narayan" ];
    };
  };
}
