{ config, pkgs, ... }:

{
  home.file = {
    # main config files
    ".config/ags/config.js".source = ./config.js;
    ".config/ags/services.js".source = ./services.js;
    ".config/ags/style.css".source = ./style.css;

    # assets directory
    ".config/ags/assets".source = ./assets;

    # bar directory files
    ".config/ags/widgets/bar/index.js".source = ./widgets/bar/index.js;

    # bar components
    ".config/ags/widgets/bar/components/clock.js".source = ./widgets/bar/components/clock.js;
    ".config/ags/widgets/bar/components/distro.js".source = ./widgets/bar/components/distro.js;
    ".config/ags/widgets/bar/components/systray.js".source = ./widgets/bar/components/systray.js;
    ".config/ags/widgets/bar/components/workspaces.js".source = ./widgets/bar/components/workspaces.js;

    # sections files
    ".config/ags/widgets/sections/left.js".source = ./widgets/sections/left.js;
    ".config/ags/widgets/sections/center.js".source = ./widgets/sections/center.js;
    ".config/ags/widgets/sections/right.js".source = ./widgets/sections/right.js;

    # launcher
    ".config/ags/widgets/launcher/launcher.js".source = ./widgets/launcher/launcher.js;
  };
}
