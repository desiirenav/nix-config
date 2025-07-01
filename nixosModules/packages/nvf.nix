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
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        lsp.enable = true;
        languages = {
          enableFormat = true;
          enableTreesitter = true;
          nix.enable = true;
          lua.enable = true;
          typst.enable = true;
        };
      };
    };
  };
}
