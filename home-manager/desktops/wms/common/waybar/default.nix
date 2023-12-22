{ pkgs, config, ... }:
{
  programs.waybar = {
    enable = true;
    systemd = {
      enable = false;
    };
    settings = [
      {
        layer = "top";
        position = "top";
        height = 60;
        margin = "0 0 0 0";
        modules-left = [
          "hyprland/workspaces"
          "tray"
        ];
        modules-center = [
          "custom/notification"
          "clock"
          "idle_inhibitor"
        ];
        modules-right = [
          "backlight"
          "battery"
          "temperature"
          "cpu"
          "memory"
          "wireplumber"
          "network"
        ];
        "hyprland/workspaces" = {
          format = "{icon}";
          sort-by-number = true;
          active-only = false;
          format-icons = {
            "1" = " 󰲌 ";
            "2" = "  ";
            "3" = " 󰎞 ";
            "4" = "  ";
            "5" = "  ";
            "6" = " 󰺵 ";
            "7" = "  ";
            urgent = "  ";
            focused = "  ";
            default = "  ";
          };
          on-click = "activate";
        };
        clock = {
          format = "󰃰 {:%a, %d %b, %I:%M %p}";
          interval = 1;
          tooltip-format = "<tt><small>{calendar}</small></tt>";
          calendar = {
            mode = "year";
            "mode-mon-col" = 3;
            "weeks-pos" = "right";
            "on-scroll" = 1;
            "on-click-right" = "mode";
            format = {
              months = "<span color='#cba6f7'><b>{}</b></span>";
              days = "<span color='#b4befe'><b>{}</b></span>";
              weeks = "<span color='#89dceb'><b>W{}</b></span>";
              weekdays = "<span color='#f2cdcd'><b>{}</b></span>";
              today = "<span color='#f38ba8'><b><u>{}</u></b></span>";
            };
          };
        };
        "custom/notification" = {
          tooltip = false;
          format = "{} {icon}";
          "format-icons" = {
            notification = "󱅫";
            none = "";
            "dnd-notification" = " ";
            "dnd-none" = "󰂛";
            "inhibited-notification" = " ";
            "inhibited-none" = "";
            "dnd-inhibited-notification" = " ";
            "dnd-inhibited-none" = " ";
          };
          "return-type" = "json";
          "exec-if" = "which swaync-client";
          exec = "swaync-client -swb";
          "on-click" = "swaync-client -t -sw";
          "on-click-right" = "swaync-client -d -sw";
          escape = true;
        };
        "idle_inhibitor" = {
          format = "{icon}";
          format-icons = {
            activated = "  ";
            deactivated = "  ";

          };
        };
        backlight = {
          format = " {percent}%";
        };
        battery = {
          states = {
            good = 80;
            warning = 50;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          format-alt = "{time}";
          format-charging = "  {capacity}%";
          format-icons = [ "󰁻 " "󰁽 " "󰁿 " "󰂁 " "󰂂 " ];
        };
        temperature = {
          interval = 1;
          tooltip = false;
          thermal-zone = 1;
          critical-threshold = 80;
          format = "{icon} {temperatureC}°C";
          format-critical = "{icon} {temperatureC}°C";
          format-icons = [ "" "" "" "" "" ];
        };

        cpu = {
          interval = 1;
          format = " {usage}%";
        };
        memory = {
          interval = 30;
          format = "󰍛 {used:0.1f}GiB";
          tooltip-format = "{used = 0.1f}GiB/{avail = 0.1f}GiB";
        };
        network = {
          interval = 1;
          format-wifi = "  {essid}";
          format-ethernet = "󰈀";
          format-disconnected = "󱚵";
          tooltip-format = ''
            {ifname}
            {ipaddr}/{cidr}
            {signalstrength}
            Up: {bandwidthUpBits}
            Down: {bandwidthDownBits}
          '';
        };
        wireplumber = {
          scroll-step = 2;
          format = "{icon} {volume}%";
          format-muted = "";
          format-icons = [ "" "" ];
          "on-click" = "helvum";
        };
        tray = {
          icon-size = 16;
          spacing = 8;
        };
      }
    ];

    style = (builtins.readFile ./styles.css);
  };
}
