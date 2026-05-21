{ config, pkgs, ... }:

{
  home.packages = [
    (pkgs.writeScriptBin "neonix" ''
      #!${pkgs.bash}/bin/bash
      sudo -E nvim /etc/nixos
    '')
  ];
}
