{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # system
    gtk3
    kitty
    neovim
    plymouth
    adi1090x-plymouth-themes
    kdePackages.breeze-grub
    git

    # audio
    pipewire
    wireplumber

    # security
    polkit_gnome
    gnome-keyring
    libsecret

    # vm
    qemu_kvm
    libvirt
    virt-viewer
    virt-manager
    spice-gtk
    spice-vdagent
  ];

  environment.variables = {
    VISUAL = "nvim";
    EDITOR = "nvim";
  };
}

