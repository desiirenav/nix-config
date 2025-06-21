{
  lib,
  config,
  pkgs,
  inputs,
  ...
}: {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    customRC = ''
      set number
    '';
    plugins = with pkgs.vimPlugins ;[
      nvim-treesitter
      neovim-ayu
    ];
  };
}
