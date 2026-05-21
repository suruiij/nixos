{ config, ... }:
{
  programs = {
    home-manager.enable = true;
    bash = {
      enable = true;
      initExtra = ''
        if [[ "$(tty)" == "/dev/tty1" ]]; then
          exec Hyprland
        fi
      '';
    };
    neovim = import ./nvim.nix;
    kitty = import ./kitty.nix;
  };
}
