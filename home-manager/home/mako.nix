{ pkgs, config, ... }:

{
  services.mako = {
    enable = true;
    borderRadius = 10;
    padding = "10";
    width = 300;
    backgroundColor = "#000000";
    borderSize = 2;
    borderColor = "#080808EE";
    font = "system-ui 10";
    textColor = "#FFFFFF";
  };
}
