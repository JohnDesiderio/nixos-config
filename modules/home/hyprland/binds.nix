{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    binds = {
      scroll_event_delay = 100;
      movefocus_cycles_fullscreen = true;
    };

    bind = [
      "SUPER_SHIFT, Q, exec, firefox"
      "$mod, Q, exec, ghostty"
      "$mod, F, fullscreen, 0"
    ];
  };
}
