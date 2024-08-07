{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.services.media-server;
in {
  options.services.media-server = {
    enable = mkEnableOption "Enable the media server";
  };

  config = mkIf cfg.enable {
    servives = {
      bazarr.enable = true;
      lidarr.enable = true;
      radarr.enable = true;
      prowlarr.enable = true;
      jellyseerr.enable = true;
      jellyfin.eable = true;
      sonarr.enable = true;
    };
  };
}
