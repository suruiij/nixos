{ config, pkgs, ... }:

{
  home.packages = [
    (pkgs.writeScriptBin "rebuild" ''
      #!${pkgs.bash}/bin/bash
      
      echo "Rebuilding NixOS..."
      sudo ${pkgs.nixos-rebuild}/bin/nixos-rebuild switch --flake /etc/nixos#nixos
      
      echo "Rebuild complete!"
    '')
  ];
}
