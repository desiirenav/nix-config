{
  lib,
  config,
  pkgs,
  inputs,
  ...
}: {
  programs.neovim = {
    viAlias = true;
    vimAlias = true;
    plugins = [
    ];
  };
}
