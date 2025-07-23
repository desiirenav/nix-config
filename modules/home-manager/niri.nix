{
  inputs,
  pkgs,
  config,
  lib,
  ...
}: let 
  colors = config.lib.stylix.colors.withHashtag;
in {
  imports = [
    inputs.niri.homeModules.niri
    inputs.niri.homeModules.stylix
  ];

  home.packages = with pkgs; [
    xwayland-satellite
    brightnessctl
    dunst
    nautilus
    swaybg
    adwaita-icon-theme
  ];

  programs.niri = {
    settings = {
      environment = {
        DISPLAY = ":0";
        NIXOS_OZONE_WL = "1";
      };
      prefer-no-csd = true;
      layout = {
        gaps = 16;
        background-color = "transparent";
        focus-ring.enable = false;
        border = {
          enable = true;
          width = 2;
        };
        shadow.enable = true;
      };
      spawn-at-startup = [
        {command = ["xwayland-satellite"];}
        {command = ["swaybg" "-m" "fill" "-i" "${./../../assets/wallpapers/ayu.png}" ];}
      ];
      screenshot-path = "~/Pictures/Screenshots/%Y-%m-%dT%H:%M:%S.png";

      layer-rules = [
        {
          matches = [
            {
              namespace = "^wallpaper$";
            }
          ];
          place-within-backdrop = true;
        } 
      ]; 

      window-rules = [
        {
          geometry-corner-radius = {
            bottom-left = 1.0;
            bottom-right = 1.0;
            top-left = 1.0;
            top-right = 1.0;
          };
          clip-to-geometry = true;
        }
      ];
      binds = with config.lib.niri.actions; {

        # Show hotkeys 
        "Mod+Shift+Slash".action = show-hotkey-overlay;
       
        # Sound
        "XF86AudioRaiseVolume".action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+";
        "XF86AudioLowerVolume".action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-";
        "XF86AudioMute".action = spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle";
        "XF86AudioMicMute".action = spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle";

        # Brightness
        "XF86MonBrightnessUp".action = spawn "brightnessctl" "--class=backlight" "set" "+10%";
        "XF86MonBrightnessDown".action = spawn "brightnessctl" "--class=backlight" "set" "10%-";

        "Mod+O".action = toggle-overview;

        "Mod+Q".action = close-window;

        "Mod+Left".action = focus-column-left;
        "Mod+Right".action = focus-column-right;
        "Mod+Down".action = focus-workspace-down;
        "Mod+Up".action = focus-workspace-up;

        "Mod+Home".action = focus-column-first;
        "Mod+End".action = focus-column-last;
        "Mod+Ctrl+Home".action = move-column-to-first;
        "Mod+Ctrl+End".action = move-column-to-last;

        "Mod+Shift+Left".action = focus-monitor-left;
        "Mod+Shift+Down".action  = focus-monitor-down;
        "Mod+Shift+Up".action   = focus-monitor-up; 
        "Mod+Shift+Right".action  = focus-monitor-right; 

        "Mod+Shift+Ctrl+Left".action  = move-column-to-monitor-left;
        "Mod+Shift+Ctrl+Down".action =  move-column-to-monitor-down;
        "Mod+Shift+Ctrl+Up".action =   move-column-to-monitor-up;
        "Mod+Shift+Ctrl+Right".action = move-column-to-monitor-right;

        "Mod+Page_Down".action = focus-workspace-down;
        "Mod+Page_Up".action =  focus-workspace-up;
        "Mod+U".action =  focus-workspace-down;
        "Mod+I".action =  focus-workspace-up;
        "Mod+Ctrl+Page_Down".action = move-column-to-workspace-down;
        "Mod+Ctrl+Page_Up".action = move-column-to-workspace-up;
        "Mod+Ctrl+U".action = move-column-to-workspace-down;
        "Mod+Ctrl+I".action = move-column-to-workspace-up;

        # Scroll with cool-down

        "Mod+Shift+Page_Down".action = move-workspace-down;
        "Mod+Shift+Page_Up".action = move-workspace-up; 
        "Mod+Shift+U".action =  move-workspace-down;
        "Mod+Shift+I".action =  move-workspace-up;

        "Mod+WheelScrollRight".action = focus-column-right;
        "Mod+WheelScrollLeft".action =  focus-column-left;
        "Mod+Ctrl+WheelScrollRight".action = move-column-right;
        "Mod+Ctrl+WheelScrollLeft".action =  move-column-left;

        "Mod+Shift+WheelScrollDown".action = focus-column-right;
        "Mod+Shift+WheelScrollUp".action =  focus-column-left;
        "Mod+Ctrl+Shift+WheelScrollDown".action = move-column-right;
        "Mod+Ctrl+Shift+WheelScrollUp".action = move-column-left;

        "Mod+1".action = focus-workspace 1;
        "Mod+2".action = focus-workspace 2;
        "Mod+3".action = focus-workspace 3;
        "Mod+4".action = focus-workspace 4;
        "Mod+5".action = focus-workspace 5;
        "Mod+6".action = focus-workspace 6;
        "Mod+7".action = focus-workspace 7;
        "Mod+8".action = focus-workspace 8;
        "Mod+9".action = focus-workspace 9;

        "Mod+BracketLeft".action  = consume-or-expel-window-left;
        "Mod+BracketRight".action = consume-or-expel-window-right;

        "Mod+Comma".action = consume-window-into-column;

        "Mod+Period".action = expel-window-from-column;

        "Mod+R".action = switch-preset-column-width;
        "Mod+Shift+R".action = switch-preset-window-height;
        "Mod+Ctrl+R".action = reset-window-height; 
        "Mod+F".action = maximize-column;

        "Mod+Ctrl+F".action = expand-column-to-available-width;

        "Mod+C".action = center-column;

        "Mod+Ctrl+C".action = center-visible-columns;

        "Mod+Minus".action = set-column-width "-10%";
        "Mod+Equal".action = set-column-width "+10%";

        "Mod+Shift+Minus".action = set-window-height "-10%";
        "Mod+Shift+Equal".action = set-window-height "+10%";
        "Mod+Shift+F".action = fullscreen-window;

        "Mod+V".action = toggle-window-floating;
        "Mod+Shift+V".action = switch-focus-between-floating-and-tiling;

        "Mod+W".action = toggle-column-tabbed-display;

        "Print".action = screenshot;

        "Mod+Escape".action = toggle-keyboard-shortcuts-inhibit;

        "Mod+M".action = quit;

        "Mod+Shift+P".action = power-off-monitors;

        "Mod+X".action = spawn "fuzzel";
        "Mod+Return".action = spawn "kitty";
      };
    };
  };
}
