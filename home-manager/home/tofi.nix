{ pkgs, ... }:

{
  programs.tofi = {
    enable = true;
    settings = {
      width = 229;
      height = 85;
      border-width = 0;
      outline-width = 0;
      padding-left = 4;
      padding-right = 4;
      padding-top = 1;
      padding-bottom = 2;
      result-spacing = 2;
      num-results = 2;
      font = "System-ui";
      font-size = 12;
      background-color = "#000E";
      text-color = "#f9fbff";
      selection-color = "#242424";
      drun-launch = true;
      anchor = "top-left";
      margin-top = 41;
      margin-left = 44;
      corner-radius = 15;
    };
  };
}

