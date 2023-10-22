{ pkgs, ... }: {
  home.packages = with pkgs; [
    swaynotificationcenter
  ];

  # TODO: move to nix-colors
  xdg.configFile."swaync/style.css" = {
    text =
      # css
      ''
        * {
        	all: unset;
        	font-size: 14px;
        	font-family: "Ubuntu Nerd Font";
        	transition: 200ms;
        }

        .floating-notifications.background .notification-row .notification-background {
        	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.8), inset 0 0 0 1px #313244;
        	border-radius: 12.6px;
        	margin: 18px;
        	background-color: #1e1e2e;
        	color: #cdd6f4;
        	padding: 0;
        }

        .floating-notifications.background .notification-row .notification-background .notification {
        	padding: 7px;
        	border-radius: 12.6px;
        }

        .floating-notifications.background .notification-row .notification-background .notification.critical {
        	box-shadow: inset 0 0 7px 0 #f38ba8;
        }

        .floating-notifications.background .notification-row .notification-background .notification .notification-content {
        	margin: 7px;
        }

        .floating-notifications.background .notification-row .notification-background .notification .notification-content .summary {
        	color: #cdd6f4;
        }

        .floating-notifications.background .notification-row .notification-background .notification .notification-content .time {
        	color: #a6adc8;
        }

        .floating-notifications.background .notification-row .notification-background .notification .notification-content .body {
        	color: #cdd6f4;
        }

        .floating-notifications.background .notification-row .notification-background .notification > *:last-child > * {
        	min-height: 3.4em;
        }

        .floating-notifications.background .notification-row .notification-background .notification > *:last-child > * .notification-action {
        	border-radius: 7px;
        	color: #cdd6f4;
        	background-color: #313244;
        	box-shadow: inset 0 0 0 1px #45475a;
        	margin: 7px;
        }

        .floating-notifications.background .notification-row .notification-background .notification > *:last-child > * .notification-action:hover {
        	box-shadow: inset 0 0 0 1px #45475a;
        	background-color: #313244;
        	color: #cdd6f4;
        }

        .floating-notifications.background .notification-row .notification-background .notification > *:last-child > * .notification-action:active {
        	box-shadow: inset 0 0 0 1px #45475a;
        	background-color: #74c7ec;
        	color: #cdd6f4;
        }

        .floating-notifications.background .notification-row .notification-background .close-button {
        	margin: 7px;
        	padding: 2px;
        	border-radius: 6.3px;
        	color: #1e1e2e;
        	background-color: #f38ba8;
        }

        .floating-notifications.background .notification-row .notification-background .close-button:hover {
        	background-color: #eba0ac;
        	color: #1e1e2e;
        }

        .floating-notifications.background .notification-row .notification-background .close-button:active {
        	background-color: #f38ba8;
        	color: #1e1e2e;
        }

        .control-center {
        	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.8), inset 0 0 0 1px #313244;
        	border-radius: 12.6px;
        	margin: 18px;
        	background-color: #1e1e2e;
        	color: #cdd6f4;
        	padding: 14px;
        }

        .control-center .widget-title {
        	color: #cdd6f4;
        	font-size: 1.3em;
        }

        .control-center .widget-title button {
        	border-radius: 7px;
        	color: #cdd6f4;
        	background-color: #313244;
        	box-shadow: inset 0 0 0 1px #45475a;
        	padding: 8px;
        }

        .control-center .widget-title button:hover {
        	box-shadow: inset 0 0 0 1px #45475a;
        	background-color: #585b70;
        	color: #cdd6f4;
        }

        .control-center .widget-title button:active {
        	box-shadow: inset 0 0 0 1px #45475a;
        	background-color: #74c7ec;
        	color: #1e1e2e;
        }

        .control-center .notification-row .notification-background {
        	border-radius: 7px;
        	color: #cdd6f4;
        	background-color: #313244;
        	box-shadow: inset 0 0 0 1px #45475a;
        	margin-top: 14px;
        }

        .control-center .notification-row .notification-background .notification {
        	padding: 7px;
        	border-radius: 7px;
        }

        .control-center .notification-row .notification-background .notification.critical {
        	box-shadow: inset 0 0 7px 0 #f38ba8;
        }

        .control-center .notification-row .notification-background .notification .notification-content {
        	margin: 7px;
        }

        .control-center .notification-row .notification-background .notification .notification-content .summary {
        	color: #cdd6f4;
        }

        .control-center .notification-row .notification-background .notification .notification-content .time {
        	color: #a6adc8;
        }

        .control-center .notification-row .notification-background .notification .notification-content .body {
        	color: #cdd6f4;
        }

        .control-center .notification-row .notification-background .notification > *:last-child > * {
        	min-height: 3.4em;
        }

        .control-center .notification-row .notification-background .notification > *:last-child > * .notification-action {
        	border-radius: 7px;
        	color: #cdd6f4;
        	background-color: #11111b;
        	box-shadow: inset 0 0 0 1px #45475a;
        	margin: 7px;
        }

        .control-center .notification-row .notification-background .notification > *:last-child > * .notification-action:hover {
        	box-shadow: inset 0 0 0 1px #45475a;
        	background-color: #313244;
        	color: #cdd6f4;
        }

        .control-center .notification-row .notification-background .notification > *:last-child > * .notification-action:active {
        	box-shadow: inset 0 0 0 1px #45475a;
        	background-color: #74c7ec;
        	color: #cdd6f4;
        }

        .control-center .notification-row .notification-background .close-button {
        	margin: 7px;
        	padding: 2px;
        	border-radius: 6.3px;
        	color: #1e1e2e;
        	background-color: #eba0ac;
        }

        .control-center .notification-row .notification-background .close-button:hover {
        	background-color: #f38ba8;
        	color: #1e1e2e;
        }

        .control-center .notification-row .notification-background .close-button:active {
        	background-color: #f38ba8;
        	color: #1e1e2e;
        }

        .control-center .notification-row .notification-background:hover {
        	box-shadow: inset 0 0 0 1px #45475a;
        	background-color: #7f849c;
        	color: #cdd6f4;
        }

        .control-center .notification-row .notification-background:active {
        	box-shadow: inset 0 0 0 1px #45475a;
        	background-color: #74c7ec;
        	color: #cdd6f4;
        }

        progressbar,
        progress,
        trough {
        	border-radius: 12.6px;
        }

        progressbar {
        	box-shadow: inset 0 0 0 1px #45475a;
        }

        .notification.critical progress {
        	background-color: #f38ba8;
        }

        .notification.low progress,
        .notification.normal progress {
        	background-color: #89b4fa;
        }

        trough {
        	background-color: #313244;
        }

        .control-center trough {
        	background-color: #45475a;
        }

        .control-center-dnd {
        	margin-top: 5px;
        	border-radius: 8px;
        	background: #313244;
        	border: 1px solid #45475a;
        	box-shadow: none;
        }

        .control-center-dnd:checked {
        	background: #313244;
        }

        .control-center-dnd slider {
        	background: #45475a;
        	border-radius: 8px;
        }

        .widget-dnd {
        	margin: 0px;
        	font-size: 1.1rem;
        }

        .widget-dnd > switch {
        	font-size: initial;
        	border-radius: 8px;
        	background: #313244;
        	border: 1px solid #45475a;
        	box-shadow: none;
        }

        .widget-dnd > switch:checked {
        	background: #313244;
        }

        .widget-dnd > switch slider {
        	background: #45475a;
        	border-radius: 8px;
        	border: 1px solid #6c7086;
        }
      '';
    recursive = true;
  };
}
