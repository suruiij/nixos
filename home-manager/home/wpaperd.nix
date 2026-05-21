{ config, lib, pkgs, ... }:
{
  home.file.".config/wpaperd/config.toml" = {
    text = ''
      [DP-2]
      path = "/etc/nixos/home-manager/wallpapers"
      [default.transition.hexagonalize] 
    '';
  };
}
