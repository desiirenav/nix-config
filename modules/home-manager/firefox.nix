{
  inputs, pkgs, 
  ...
}: {
  home.packages = with pkgs; [
    librewolf
    inputs.zen-browser.packages."${system}".twilight
  ];
}
