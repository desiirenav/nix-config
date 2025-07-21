{pkgs, ...}: {
  fonts.packages = with pkgs; [
    lmodern
    corefonts
  ];
}
