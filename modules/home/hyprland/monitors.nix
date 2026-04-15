{ pkgs, ... }: 
{
  wayland.windowManager.hyprland = {
    settings.monitor = [ 
      "DP-1,3840x2160,0x0,1" 
      ""
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
