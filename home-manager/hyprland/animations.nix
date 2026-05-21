{ config, pkgs, ... }:

{
  animations = {
    enabled = true;
    bezier = "myBezier, 0, 1, 0.5, 1";
    animation = [
      "windows, 1, 7, myBezier, slide"
      "windowsOut, 1, 7, myBezier, slide"
      "border, 0, 10, default"
      "borderangle, 0, 8, default"
      "fade, 0, 1, default"
      "workspaces, 0, 1, default"
    ];
  };
}
