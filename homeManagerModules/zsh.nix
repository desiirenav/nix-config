{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;       
    initContent = ''
      if [ "$(tty)" = "/dev/tty1" ];then   
         exec niri-session 
      fi 
    '';
    oh-my-zsh = {
      enable = true;
      plugins = [
      ];
    };
  };
}
