{ config, pkgs, ... }:

{
  imports = [ 
        # configurations
	./hyprland/hyprland.nix
	./ags/ags.nix
        ./home/home-packages.nix
        ./home/waybar.nix
	./home/tofi.nix
	./home/mako.nix
        ./home/qt.nix
        ./home/xdg.nix
        ./home/gtk.nix
        ./home/programs.nix
        ./home/cursor.nix
	./home/desktop-entries.nix
	./home/wpaperd.nix

	# scripts
	./scripts/nix-rebuild.nix
	./scripts/trashout.nix
	./scripts/etcnixos.nix
        ./scripts/ags-start.nix
	];

  home = {
    username = "user";
    homeDirectory = "/home/user";
    stateVersion = "24.11";
};
}
