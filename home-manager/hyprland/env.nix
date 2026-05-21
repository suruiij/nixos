{ config, pkgs, ... }:

{
  env = [
    "XCURSOR_SIZE,30"
    "XCURSOR_THEME,capitaine-cursors"
    "HYPRCURSOR_SIZE,30"
    "HYPRCURSOR_THEME,capitaine-cursors"
    "XDG_CURRENT_DESKTOP,Hyprland"
  ];
}
