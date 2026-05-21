{ config, lib, pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    
    settings = {
      mainBar = {
        height = 26;
        spacing = 4;

        "modules-left" = [
          "custom/title"
          "hyprland/workspaces"
        ];
        
        "modules-center" = [
          "clock"
        ];
        
        "modules-right" = [
          "tray"
          "pulseaudio"
          "cpu"
          "memory"
          "custom/power"
        ];

        "hyprland/workspaces" = {};

        "clock" = {
          interval = 1;
          tooltip = false;
          format = "{:%H:%M}";
        };

        "cpu" = {
          interval = 1;
          tooltip = false;
          format = " {usage}%";
        };

        "memory" = {
          interval = 1;
          tooltip = false;
          format = " {used}%";
        };

        "pulseaudio" = {
          "scroll-step" = 5;
          "format-muted" = "";
          "format-icons" = {
            "default" = [
              " " "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" ""
            ];
          };
          "format" = "{icon} {volume}%";
          "tooltip" = false;
          "on-click-right" = "pavucontrol";
          "on-click" = "pavucontrol";
        };

        "custom/brightness" = {
          exec = "ddcutil -b 7 getvcp 10 -t | perl -nE 'if (/ C (\\d+) /) { say $1; }'";
          "exec-if" = "sleep 1";
          format = "🌙 {}%";
          interval = "once";
          "on-scroll-up" = "ddcutil -b 7 setvcp 10 + 10";
          "on-scroll-down" = "ddcutil -b 7 setvcp 10 - 10";
          "on-click-right" = "ddcutil -b 7 setvcp 10 - 40";
          "on-click" = "ddcutil -b 7 setvcp 10 + 40";
        };

        "custom/power" = {
          format = "⏻";
          tooltip = false;
          "on-click" = "~/.config/scripts/poweractions.zsh shutdown";
          "on-click-right" = "~/.config/scripts/poweractions.zsh reboot";
        };
      };
    };

    style = ''
      * {
          margin: 0;
          padding: 0;
	  background: rgba(0, 0, 0, 1);
      }

      tooltip {
          font-size: 12px;
      }

      tooltip label {
          color: white;
      }

      label.module,
      #tray {
          color: white;
          font-family: "SF-Pro";
          font-size: 12px;
          border: 1px solid rgba(100, 114, 125, 0.5);
          border-radius: 10px;
          padding: 0 6px;
      }

      #pulseaudio {
          border-radius: 12px;
          margin-top: 0px;
          padding: 1px 6px 0;
      }

      #workspaces {
          border-radius: 16px;
          font-size: 11px;
          margin-top: 0px;
          padding: 0 6px;
      }

      #workspaces button.visible {
          border-radius: 100px;
          padding: 0 6px;
      }
    '';
  };
}
