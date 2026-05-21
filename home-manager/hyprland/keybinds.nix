{ config, pkgs, ... }:

{
  bindm = [
    "SUPER, mouse:272, movewindow"
    "SUPER, mouse:273, resizewindow"
  ];

  bind = [
    "SUPER, Q, exec, kitty"
    "SUPER, C, killactive,"
    "SUPER, M, exit,"
    "SUPER, E, exec, caja"
    "SUPER, R, exec, tofi-drun"
    "SUPER, V, togglefloating,"
    "SUPER, P, pseudo,"
    "SUPER, J, togglesplit,"
    "SUPER, A, exec, wpaperctl next"

    "SUPER, 1, workspace, 1"
    "SUPER, 2, workspace, 2"
    "SUPER, 3, workspace, 3"
    "SUPER, 4, workspace, 4"
    "SUPER, 5, workspace, 5"
    "SUPER, 6, workspace, 6"
    "SUPER, 7, workspace, 7"
    "SUPER, 8, workspace, 8"
    "SUPER, 9, workspace, 9"
    "SUPER, 0, workspace, 10"

    "SUPER SHIFT, 1, movetoworkspace, 1"
    "SUPER SHIFT, 2, movetoworkspace, 2"
    "SUPER SHIFT, 3, movetoworkspace, 3"
    "SUPER SHIFT, 4, movetoworkspace, 4"
    "SUPER SHIFT, 5, movetoworkspace, 5"
    "SUPER SHIFT, 6, movetoworkspace, 6"
    "SUPER SHIFT, 7, movetoworkspace, 7"
    "SUPER SHIFT, 8, movetoworkspace, 8"
    "SUPER SHIFT, 9, movetoworkspace, 9"
    "SUPER SHIFT, 0, movetoworkspace, 10"

    "SUPER, S, togglespecialworkspace, magic"
    "SUPER SHIFT, S, movetoworkspace, special:magic"

    "SUPER, mouse_down, workspace, e+1"
    "SUPER, mouse_up, workspace, e-1"

    "SUPER SHIFT, right, resizeactive, 80 0"
    "SUPER SHIFT, left, resizeactive, -80 0"
    "SUPER SHIFT, down, resizeactive, 0 80"
    "SUPER SHIFT, up, resizeactive, 0 -80"

    "SUPER, Print, exec, grim -g \"$(slurp -d)\" - | wl-copy"
  ];

  bindel = [
    ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%+"
    ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"
    ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
  ];

  bindl = [
    ", XF86AudioPlay, exec, playerctl play-pause"
    ", XF86AudioNext, exec, playerctl next"
    ", XF86AudioPrev, exec, playerctl previous"
  ];
}
