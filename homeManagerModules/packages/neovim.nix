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
    extraConfig = ''
      set number relativenumber
    '';
    plugins = with pkgs.vimPlugins ;[
      nvim-treesitter
      neovim-ayu
    ];
  };
}
