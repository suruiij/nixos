{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # system
    home-manager
    hyprcursor
    hyprsunset
    ddcutil # hyprsunset
    rwedid
    wpaperd
    ags
    waybar
    mako
    tofi
    grim
    slurp
    wl-clipboard
    xclip
    playerctl
    btop
    fastfetch
    wineWowPackages.wayland
    appimage-run
    
    # system apps
    mate.caja
    file-roller
    mpv
    qview
    pavucontrol
    appeditor
    
    # apps
    buttercup-desktop
    anytype
    localsend
    steam
    vesktop
    qbittorrent-enhanced
    gfn-electron
    
    # fonts
    iosevka
    
    # icons, cursors and themes
    kora-icon-theme
    capitaine-cursors
    libsForQt5.qt5ct
    adwaita-qt
    adwaita-qt6
    adw-gtk3
  ];
}
