{pkgs, ...}: {
  fonts.packages = with pkgs; [
    lmodern
    league-spartan
    fira-math
    texlivePackages.lete-sans-math
  ];
}
