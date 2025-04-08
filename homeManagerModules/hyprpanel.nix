{
  config,
  inputs,
  self,
  pkgs,
  ...
}: {
  imports = [
    inputs.hyprpanel.homeManagerModules.hyprpanel
  ];

  programs.hyprpanel = {
    enable = true;
    systemd.enable = true;
    hyprland.enable = true;
    overwrite.enable = true;
    overlay.enable = true;
    settings = {
      bar.launcher.icon = "󱄅";
      layout = {
        "bar.layouts" = {
          "*" = {
            "left" = [
              "dashboard"
              "workspaces"
              "windowtitle"
            ];
            "middle" = [
              "media"
            ];
            "right" = [
              "volume"
              "battery"
              "clock"
              "network"
              "systray"
              "notifications"
            ];
          };
        };
      };
      theme = {
        osd.scaling = 70;
        tooltip.scaling = 70;
        notification.scaling = 70;
        bar = {
          scaling = 70;
          menus = {
            popover.scaling = 70;
            menu = {
              battery.scaling = 70;
              bluetooth.scaling = 70;
              clock.scaling = 70;
              dashboard.confirmation_scaling = 70;
              dashboard.scaling = 70;
              media.scaling = 70;
              network.scaling = 70;
              notifications.scaling = 70;
              power.scaling = 70;
              volume.scaling = 70;
            };
          };
        };
      };
    };
  };
}
