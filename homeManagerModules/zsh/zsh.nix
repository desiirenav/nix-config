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

      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';
    zplug = {
      enable = true;
      plugins = [{
        name = "romkatv/powerlevel10k";
        tags = [ "as:theme" "depth:1" ];
      }];
    };

    home.file.".p10k.zsh" = {
      source = ./.p10k.zsh;
      executable = true;
    };
  };
}
