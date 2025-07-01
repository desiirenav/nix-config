{
  lib,
  inputs,
  pkgs,
  config,
  ...
}: {
  imports = [ inputs.textfox.homeManagerModules.default ];

  textfox = {
    enable = true;
  };
}
