{
  lib,
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.nixvim.nixosModules.nixvim];

  colorschemes.ayu.enable = true;

  plugins = {
    lualine.enable = true;
  };
}
