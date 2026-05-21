{ config, pkgs, ... }:

{
  general = {
    gaps_in = 2;
    gaps_out = 4;
    border_size = 2;
    "col.active_border" = "rgba(080808ee)";
    "col.inactive_border" = "rgba(080808ee)";
    resize_on_border = false;
    allow_tearing = false;
    layout = "dwindle";
    monitor = ",preferred,auto,auto";
  };

  dwindle = {
    pseudotile = true;
    preserve_split = true;
  };
}

