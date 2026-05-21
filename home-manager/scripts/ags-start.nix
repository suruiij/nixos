{ config, pkgs, ... }:

{
  home.packages = [
    (pkgs.writeScriptBin "Ags" ''
      #!${pkgs.bash}/bin/bash
      nix-shell -p libdbusmenu-gtk3 gobject-introspection --run "ags &"
'')
  ];
}
