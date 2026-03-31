{ ... }:
{
  imports = [
    ./bootloader.nix
    ./docker.nix
    ./i18.nix
    ./networking.nix
    ./nix-specific-settings.nix
    ./nixpkgs.nix
    ./pipewire.nix
    ./services.nix
    ./timezone.nix
    ./users.nix
    ./xserver.nix
  ];
}
