{ config, lib, pkgs, ... }:

{
    xdg = {
      enable = true;
      
      configFile."mimeapps.list".force = true;
      
      desktopEntries = {
      # apps
        "kitty" = {
          name = "kitty";
          genericName = "terminal emulator";
          exec = "kitty";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "kitty";
        };

        "nvim" = {  
          name = "nvim";
          genericName = "text editor";
          exec = "${pkgs.kitty}/bin/kitty -e nvim %F";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "nvim";
          mimeType = [
	    "text/markdown"
            "text/plain" 
            "text/x-python"
            "text/x-c"
            "text/x-cpp"
            "text/x-java"
            "text/x-csrc"
            "text/x-chdr"
            "text/x-c++src"
            "text/x-c++hdr"
            "text/x-shellscript"
            "text/x-javascript"
            "text/x-typescript"
            "text/css"
            "text/x-sql"
            "text/x-php"
            "text/x-ruby"
            "text/x-yaml"
            "text/x-makefile"
            "text/x-diff"
            "text/xml"
            "application/x-yaml"
            "application/xml"
            "application/javascript"
            "application/json"
          ];
        };

        "btop" = {  
          name = "btop";
          genericName = "system monitor";
          exec = "${pkgs.kitty}/bin/kitty -e btop";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "utilities-system-monitor";
        };

        "mate.caja" = {
          name = "caja";
          genericName = "file manager";
          exec = "caja";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "caja-actions";
        };

        "org.gnome.FileRoller" = {
          name = "file roller";
          genericName = "archiver";
          exec = "file-roller";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "file-roller";
	  mimeType = [ "*/*" ];
        };

        "org.pulseaudio.pavucontrol" = {
          name = "pavucontrol";
          genericName = "volume control";
          exec = "pavucontrol";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "pavucontrol";
        };

        "com.github.donadigo.appeditor" = {
          name = "menu editor";
          genericName = "menu editor";
          exec = "com.github.donadigo.appeditor";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "com.github.donadigo.appeditor";
        };

        "mpv" = {
          name = "mpv";
          genericName = "media player";
          exec = "mpv --player-operation-mode=pseudo-gui -- %U";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "mpv";
          mimeType = [ "video/mp4" "video/mkv" "audio/mp3" ];
        };

        "com.interversehq.qView" = {
          name = "qview";
          genericName = "image viewer";
          exec = "qview %F";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "com.interversehq.qView";
          mimeType = [ "image/jpeg" "image/png" "image/gif" ];
        };

        "zen" = {
          name = "zen";
          genericName = "web browser";
          exec = "appimage-run /data/appimage/zen-browser.AppImage ";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "org.mozilla.firefox";
          mimeType = [ "text/html" "text/xml" "application/xhtml+xml" ];
        };

        "buttercup" = {
          name = "buttercup";
          genericName = "password manager";
          exec = "buttercup-desktop";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "buttercup";
        };

        "anytype" = {
          name = "anytype";
          genericName = "note taking";
          exec = "anytype";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "anytype";
          mimeType = [ "text/markdown" ];
        };

        "LocalSend" = {
          name = "localsend";
          genericName = "file transfer";
          exec = "localsend_app";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "localsend";
        };

        "steam" = {
          name = "steam";
          genericName = "gaming platform";
          exec = "steam";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "steam";
        };

        "vesktop" = {
          name = "discord";
          genericName = "discord client";
          exec = "vesktop";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "vesktop";
        };

        "org.qbittorrent.qBittorrent" = {
          name = "qbittorrent";
          genericName = "torrent client";
          exec = "qbittorrent";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "qbittorrent";
        };

        "com.github.hmlendea.geforcenow-electron" = {
          name = "geforce now";
          genericName = "cloud gaming client";
          exec = "geforcenow-electron";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "geforcenow-electron";
        };

        "virt-manager" = {
          name = "virtual machine manager";
          genericName = "virtual machine manager";
          exec = "virt-manager";
          terminal = false;
          categories = [ "X-apps" ];
          icon = "virt-manager";
        };

        # hidden apps
        "nixos-manual" = {  
          name = "nixos-help";
          noDisplay = true;
          icon = "window-close-symbolic";
          categories = [ "X-hidden" ];
        };

        "qt5ct" = {  
          name = "qt5ct";
          noDisplay = true;
          icon = "window-close-symbolic";
          categories = [ "X-hidden" ];
        };

        "qt6ct" = {  
          name = "qt6ct";
          noDisplay = true;
          icon = "window-close-symbolic";
          categories = [ "X-hidden" ];
        };

        "umpv" = {  
          name = "umpv";
          noDisplay = true;
          icon = "window-close-symbolic";
          categories = [ "X-hidden" ];
        };

        "remote-viewer" = {  
          name = "remote viewer";
          noDisplay = true;
          icon = "window-close-symbolic";
          categories = [ "X-hidden" ];
        };

      };

      mimeApps = {
        enable = true;
        defaultApplications = {

	  # terminal
          "x-scheme-handler/terminal" = [ "kitty.desktop" ];
          "application/terminal" = [ "kitty.desktop" ];

	  # browser
	  "text/html" = [ "zen.desktop" ];
          "x-scheme-handler/http" = [ "zen.desktop" ];
          "x-scheme-handler/https" = [ "zen.desktop" ];

	  # images
          "image/jpeg" = [ "qview.desktop" ];
          "image/png" = [ "qview.desktop" ];
          "image/gif" = [ "qview.desktop" ];

	  # video
          "video/mp4" = [ "mpv.desktop" ];
          "video/mkv" = [ "mpv.desktop" ];
          "audio/mp3" = [ "mpv.desktop" ];

	  # torrent
          "application/x-bittorrent" = [ "org.qbittorrent.qBittorrent.desktop" ];
          "x-scheme-handler/magnet" = [ "org.qbittorrent.qBittorrent.desktop" ];

          # file-roller
          "application/zip" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-tar" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-gzip" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-bzip2" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-xz" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-7z-compressed" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-rar" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-lzma" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-compressed-tar" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-bzip-compressed-tar" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-lzma-compressed-tar" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-xz-compressed-tar" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-archive" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-cpio" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-deb" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-rpm" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-lha" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-lzop" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-stuffit" = [ "org.gnome.FileRoller.desktop" ];

	  # nvim
          "text/markdown" = [ "nvim.desktop" ];
          "text/plain" = [ "nvim.desktop" ];
          "text/x-python" = [ "nvim.desktop" ];
          "text/x-c" = [ "nvim.desktop" ];
          "text/x-cpp" = [ "nvim.desktop" ];
          "text/x-java" = [ "nvim.desktop" ];
          "text/x-csrc" = [ "nvim.desktop" ];
          "text/x-chdr" = [ "nvim.desktop" ];
          "text/x-c++src" = [ "nvim.desktop" ];
          "text/x-c++hdr" = [ "nvim.desktop" ];
          "text/x-shellscript" = [ "nvim.desktop" ];
          "text/x-javascript" = [ "nvim.desktop" ];
          "text/x-typescript" = [ "nvim.desktop" ];
          "text/css" = [ "nvim.desktop" ];
          "text/x-sql" = [ "nvim.desktop" ];
          "text/x-php" = [ "nvim.desktop" ];
          "text/x-ruby" = [ "nvim.desktop" ];
          "text/x-yaml" = [ "nvim.desktop" ];
          "text/x-makefile" = [ "nvim.desktop" ];
          "text/x-diff" = [ "nvim.desktop" ];
          "text/xml" = [ "nvim.desktop" ];
          "application/x-yaml" = [ "nvim.desktop" ];
          "application/xml" = [ "nvim.desktop" ];
          "application/javascript" = [ "nvim.desktop" ];
          "application/json" = [ "nvim.desktop" ];
        };
      };
    };
}
