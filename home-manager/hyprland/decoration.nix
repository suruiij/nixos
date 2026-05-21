{ config, pkgs, ... }:

{
  decoration = {
    rounding = 10;
    active_opacity = 1.0;
    inactive_opacity = 0.9;

    blur = {
      enabled = true;
      size = 3;
      passes = 1;
      vibrancy = 0.1696;
    };
  };
}
