{ config, pkgs, ... }:

{
  time.timeZone = "Europe/Prague";

  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [ "en_US.UTF-8/UTF-8" "cs_CZ.UTF-8/UTF-8" ];
  };
}
