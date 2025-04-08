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
      theme = {
        osd.scaling = 70;
        tooltip.scaling = 70;
        notification.scaling = 70;
        bar = {
          margin_bottom = "0em";
          margin_sides = "20em";
          margin_top = "0.5em";
          shadow = "1px 1px 12px 1px #000000";
          shadowMargins = "0px 1px 12px 1px";
          border_radius = "1.4em";
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
