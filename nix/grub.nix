{ config, pkgs, ... }:

let
  splashImageBase64 = ''
    iVBORw0KGgoAAAANSUhEUgAAAJYAAADIAQMAAAAwS4omAAAAA1BMVEUAAACnej3aAAAACXBIWXMA
    AA7EAAAOxAGVKw4bAAAAG0lEQVRIie3BMQEAAADCoPVPbQwfoAAAAIC3AQ+gAAEq5xQCAAAAAElF
    TkSuQmCC
  '';
in 

{
  system.build.grubSplashImage = pkgs.runCommand "grub-splash-image" { } ''
    mkdir -p $out
    echo "${splashImageBase64}" | base64 -d > $out/background.png
  '';

boot = {
  plymouth = {
    enable = true;
    theme = "abstract_ring_alt";
    themePackages = [ pkgs.adi1090x-plymouth-themes ];
    };

  initrd = {
    verbose = false;
    systemd.enable = true;
    luks.devices."encryption" = {
      device = "/dev/disk/by-uuid/d68f516e-a5c1-43af-9266-bd0fedcab9a7";
      preLVM = true;
      allowDiscards = true;
    };
    kernelModules = [ "i915" ];
 };
  kernelModules = [ "i2c-dev" "ddcci_backlight" ];

  consoleLogLevel = 0;
  kernelParams = [
    "quiet"
    "splash"
    "plymouth.enable=1"
    "rd.plymouth=1"
    "loglevel=3"
    "rd.systemd.show_status=false"
    "rd.udev.log_level=3"
    "udev.log_priority=3"
    "gfxpayload=keep"
  ];
  
  loader = {
    timeout = 3;
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      theme = pkgs.breeze-grub + "/grub/themes/breeze";
      splashImage = "${config.system.build.grubSplashImage}/background.png";
     };
   };
 };
}
