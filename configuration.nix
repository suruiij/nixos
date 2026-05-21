{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  imports = [
    ./hardware-configuration.nix
    ./nix/grub.nix
    ./nix/qemu.nix
    ./nix/audio.nix
    ./nix/users.nix
    ./nix/sys-packages.nix
    ./nix/security.nix
    ./nix/hardware.nix
    ./nix/hyprland.nix
    ./nix/locale.nix
    ./nix/services.nix
    ./nix/networking.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.11";
}
