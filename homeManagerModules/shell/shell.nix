{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.nushell = {
    enable = true;
    extraConfig = ''
      $env.config.show_banner = false
      if $nu.is-login and (tty | str trim) == "/dev/tty1" {
         exec niri-session
      }
    '';
  };
  programs.starship = {
    enable = true;
    enableNushellIntegration = true;
    settings = builtins.fromTOML (builtins.readFile ./starship.toml);
  };
}
