{ ... }:
{
  programs.btop = {
    enable = true;

    settings = {
        color_theme = "TTY";
        theme_background = false;
        update_ms = 500;
        round_corners = false;
    };
  };
}