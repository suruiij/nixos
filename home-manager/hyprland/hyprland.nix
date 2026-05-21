{ config, pkgs, ... }:

let
  exec = import ./exec.nix { inherit config pkgs; };
  keybinds = import ./keybinds.nix { inherit config pkgs; };
  windowrule = import ./windowrule.nix { inherit config pkgs; };
  input = import ./input.nix { inherit config pkgs; };
  animations = import ./animations.nix { inherit config pkgs; };
  general = import ./general.nix { inherit config pkgs; };
  decoration = import ./decoration.nix { inherit config pkgs; };
  env = import ./env.nix { inherit config pkgs; };
  misc = import ./misc.nix { inherit config pkgs; };
in

{
  wayland.windowManager.hyprland.enable = true;

  wayland.windowManager.hyprland.settings = {
    inherit (exec) exec-once;
    inherit (keybinds) bind bindm bindl bindel;
    inherit (windowrule) windowrulev2 windowrule;
    inherit (input) input;
    inherit (animations) animations; 
    inherit (general) general;
    inherit (decoration) decoration;
    inherit (env) env;
    inherit (misc) misc;
  };
}
