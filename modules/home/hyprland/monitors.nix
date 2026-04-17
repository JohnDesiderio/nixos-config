{ pkgs, ... }: 
{
  wayland.windowManager.hyprland = {
    settings.monitor = [ 
    	"DP-1, 1920x1080, auto, auto"
    	"HDMI-1, 1920x1080, auto, auto"
    ];

    extraConfig = ''
      # hyprlang noerror true
        source = ~/.config/hypr/monitors.conf
        source = ~/.config/hypr/workspaces.conf
      # hyprlang noerror false 
    '';
  };

  home.packages = with pkgs; [ nwg-displays ];
}
