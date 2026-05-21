{ config, pkgs, ... }:

{
  "exec-once" = [ 
    "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1"
    "hyprcursor"
    "wpaperd"
   ];
}
