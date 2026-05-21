{ config, pkgs, ... }:

{
  input = {
    kb_layout = "us,cz";
    kb_variant = ",qwerty";
    kb_options = "grp:alt_shift_toggle";    
    follow_mouse = 1;
    sensitivity = 0;
    accel_profile = "flat";
    touchpad = {
      natural_scroll = false;
    };
  };
      
  gestures.workspace_swipe = false;
      
  device = {
    "name" = "epic-mouse-v1";
    sensitivity = 1;
  };
}
