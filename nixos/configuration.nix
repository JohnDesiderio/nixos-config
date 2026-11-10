# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)
{ 
  inputs,
  lib,
  config, 
  pkgs, 
  ... 
}:
{
  # You can import other nixos modules here
  imports =
    [ 
      # If you want to use modules your own flake exports (from modules/nixos):
      # inputs.self.nixosModules.example 

      # Or module from other flakes (such as nixos-hardware):
      # inputs.hardware.nixosModules.common-cpu-amd
      # inputs.hardware.nixosModules.common-ssd

      # You can also split up your configuration and import pieces of it here:
      # ./users.nix
      ./desktop-configuration/boot-loader.nix
      ./desktop-configuration/i18n.nix
      ./desktop-configuration/networking.nix
      ./desktop-configuration/nix-packages.nix
      ./desktop-configuration/nix-settings.nix
      ./desktop-configuration/services.nix
      ./desktop-configuration/timezone.nix
      ./desktop-configuration/user.nix

      # Import your generated (nixos-generate-config) hardware configuration
      ./hardware-configuration.nix
    ];
    # FIXME: Everything in here is to diagnose problems with loading Kitty
    # environment.sessionVariables = {
    #   # Hint Electron apps to use Wayland natively
    #   NIXOS_OZONE_WL = "1";
    # };
    #
    # hardware.graphics = {
    #   enable = true;
    #   enable32Bit = true; # Highly recommended for Steam/gaming
    # };
    #
    # services.xserver.videoDrivers = [ "nvidia" ]; 
    # hardware.nvidia = { 
    #   modesetting.enable = true;
    #
    #   # Required explicitly for drivers >= 560
    #   open = true;
    # };
    #
    # xdg.portal = {
    #   enable = true;
    #   extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    # };
    # FIXME: end 

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
