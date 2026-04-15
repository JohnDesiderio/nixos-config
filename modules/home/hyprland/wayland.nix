{ pkgs, lib, config, inputs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
  };
}
