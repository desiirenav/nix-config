{
  lib,
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.nvf.nixosModules.default];

  programs.nvf = {
    enable = true;
    settings = {
      vim = lib.mkForce {
        mini.statusline.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        lsp.enable = true;
        theme = {
          name = "rose-pine";
          style = "dawn";
        };
        languages = {
          enableFormat = true;
          enableTreesitter = true;
          nix.enable = true;
          typst = {
            enable = true;
            extensions.typst-preview-nvim.enable = true;
          };
        };
      };
    };
  };
}
