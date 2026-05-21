{ config, pkgs, ... }:

{
  windowrulev2 = [
    "suppressevent maximize, class:.*"
    "float,window_title:Picture-in-Picture"
   ];
      
  windowrule = [
    "float, kitty"
    "size 700 487,kitty"
    "opacity 0.85,kitty"
    "opacity 0.95,caja"
    "opacity 0.95,localsend"
    "opacity 0.95,anytype"
    "opacity 0.95,vesktop"
    "opacity 0.95,^(Buttercup)$"	
   ];
}
