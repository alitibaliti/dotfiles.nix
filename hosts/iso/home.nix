{ inputs
, pkgs
, lib
, config
, ...
}: {
  imports = [
    ../../home-manager
    ../../home-manager/programs
  ];

  config = {
    # TODO: Auto start foot with fish shell
    # TODO: Auto start use my settings
    home.file.".config/autostart/foot.desktop".text =
      ''
        [Desktop Entry]
        Type=Application
        Exec=foot -m fish -c 'nix_installer'
        Hidden=false
        NoDisplay=false
        X-GNOME-Autostart-enabled=true
        Name[en_NG]=Terminal
        Name=Terminal
        Comment[en_NG]=Start Terminal On Startup
        Comment=Start Terminal On Startup
      '';

    modules = {
      editors = {
        nvim.enable = true;
      };

      shells = {
        fish.enable = true;
      };

      terminals = {
        foot.enable = true;
      };
    };

    my.settings = {
      host = "iso";
      default = {
        shell = "${pkgs.fish}/bin/fish";
        terminal = "${pkgs.foot}/bin/foot";
        browser = "firefox";
        editor = "nvim";
      };
    };

    colorscheme = inputs.nix-colors.colorSchemes.catppuccin-mocha;

    home = {
      username = lib.mkDefault "nixos";
      homeDirectory = lib.mkDefault "/home/${config.home.username}";
      stateVersion = lib.mkDefault "23.05";
    };
  };
}
