{
  inputs, pkgs, 
  ...
}: {
  environment.systemPackages = with pkgs; [
    librewolf
    inputs.zen-browser.packages."${system}".twilight
  ];
}
