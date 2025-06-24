{
  inputs,
  pkgs,
  config,
  ...
}: {
  programs.ghostty = {
    enable = true;
    settings = {
      font-style = "medium";
    };
  };
}
