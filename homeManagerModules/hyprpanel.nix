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
    layout = {
      "bar.layouts" = {
        "0" = {
          left = ["dashboard" "workspaces" "windowtitle"];
          middle = ["media"];
          right = ["volume" "network" "bluetooth" "systray" "clock" "notifications"];
        };
        "1" = {
          left = ["dashboard" "workspaces" "windowtitle"];
          middle = ["media"];
          right = ["volume" "clock" "notifications"];
        };
      };
    };
    settings = {
      bar.launcher.icon = "󰌢"; # Updated icon for Rofi
      menus.dashboard.shortcuts.left = {
        shortcut1 = {
          icon = "󰈹"; # Zen browser icon
          tooltip = "Zen Browser";
          command = "${pkgs.zen}/bin/zen";
        };
        shortcut2 = {
          icon = "󰙯"; # Vencord/Discord icon
          tooltip = "Vencord";
          command = "${pkgs.vencord}/bin/vencord"; # Adjust package name if needed
        };
        shortcut3 = {
          icon = "󰓇"; # Spotify icon
          tooltip = "Spotify";
          command = "${pkgs.spotify}/bin/spotify";
        };
        shortcut4 = {
          icon = "󰌢"; # Rofi icon
          tooltip = "Rofi Launcher";
          command = "${pkgs.rofi}/bin/rofi";
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
