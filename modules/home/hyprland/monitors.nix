{ pkgs, ... }: 
{
  wayland.windowManager.hyprland = {
    settings.monitor = [ 
    	"DP-1, 1920x1080, auto, auto"
    	"HDMI-1, 1920x1080, auto, auto"
    	"WAYLAND-1, 1920x1080, auto, auto"
    ];

    extraConfig = ''
      monitor=HDMI-1, 1920x1080, 0x0, 1
      monitor=DP-1, 1920x1080, 0x0, 1
    '';
  };

  home.packages = with pkgs; [ nwg-displays ];
}
