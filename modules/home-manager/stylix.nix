{
  pkgs,
  lib,
  ...
}: {
  stylix = {
    autoEnable = true;
    enable = true;
    targets = {
      neovim.enable = true;
      firefox.profileNames = [ "narayan" ];
    };
  };
}
