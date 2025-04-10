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
    theme = "gruvbox";
    layout = {
      "bar.layouts" = {
        "*" = {
          "left" = [
            "dashboard"
          ];
          "middle" = [
            "workspaces"
          ];
          "right" = [
            "volume"
            "network"
            "battery"
            "clock"
            "systray"
          ];
        };
      };
    };
    settings = {
      bar = {
        launcher.icon = "󱄅";
        clock = {
          format = "%a %b %d  %I:%M %p";
        };
        network = {
          label = false;
        };
        notifications = {
          show_total = true;
          hideCountWhenZero = false;
        };
      };
      theme = {
        osd.scaling = 70;
        tooltip.scaling = 70;
        notification.scaling = 70;
        bar = {
          margin_bottom = "0em";
          margin_sides = "20em";
          margin_top = "0.5em";
          floating = true;
          buttons = {
            background_opacity = 0;
          };
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
