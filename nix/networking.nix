{ config, pkgs, ... }:

{
  networking.networkmanager.enable = true;
  # LocalSend uses this port for LAN transfers.
  networking.firewall.allowedTCPPorts = [ 53317 ];
  networking.firewall.allowedUDPPorts = [ 53317 ];
}
