{ config, pkgs, ... }:

{
  security = {
    sudo = {
      enable = true;
      extraConfig = ''
        Defaults rootpw
      '';
    };

    rtkit.enable = true;

    pam.services.login.enableGnomeKeyring = true;
  };

  services.gnome.gnome-keyring.enable = true;
}

