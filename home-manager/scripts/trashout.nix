{ config, pkgs, ... }:

{
  home.packages = [
    (pkgs.writeScriptBin "trashout" ''
      #!${pkgs.bash}/bin/bash
      echo "Removing old generations..."
      sudo ${pkgs.nix}/bin/nix-env -p /nix/var/nix/profiles/system --delete-generations old
      
      echo "Running garbage collection..."
      sudo ${pkgs.nix}/bin/nix-collect-garbage -d
      
      echo "Disk space after cleanup:"
      ${pkgs.coreutils}/bin/df -h /nix
    '')
  ];
}
