{ ... }:
{
  imports = [
    ./bootloader.nix
    ./networking.nix
    ./nix-specific-settings.nix
    ./nixpkgs.nix
    ./pipewire.nix
    ./services.nix
    ./timezone.nix
    ./users.nix
    ./virtualization.nix
    ./wayland.nix
    ./xserver.nix
  ];
}
