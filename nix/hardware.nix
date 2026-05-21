{ config, pkgs, ... }:

{
  hardware = {
  graphics = {
    enable = true;
    enable32Bit = true;
  };
  i2c.enable = true;
 };
}
