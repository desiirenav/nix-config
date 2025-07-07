{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;
    enableCompletions = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    history.size = 10000;
  };
}
