{
  config,
  lib,
  pkgs,
  ...
}:{
  systemd.user.services = {
    swaybg = {
      description = "Wallpaper Service";
      after = [ "niri.service" ];
      wantedBy = [ "graphical-session.target" ];
      serviceConfig = {
        ExecStart = "${pkgs.swaybg}/bin/swaybg -m fill -i ${./../../assets/wallpapers/nord.jpg}";
        Restart = "on-failure";
      };
    };
  };
}
