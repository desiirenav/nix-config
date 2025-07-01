{
  lib,
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.nixvim.nixosModules.nixvim];

  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    colorschemes.gruvbox.enable = true;
    plugins = {
      lualine.enable = true;
      web-devicons.enable = true;
      telescope.enable = true;
      treesitter.enable = true;
      typst-vim.enable = true;
      lsp = {
        enable = true;
      };
    };
  };
}
