# With plans of expanding the network files, this might eventually need to
# get split up into multiple files depending on what I want to accomplish
{ ... }:
{
  # FIXME Rewrite this to use "${hostname}" instead of a hardcoded hostname
  networking.hostName = "nixos"; 
  # networking.wireless.enable = true; # Enable wireless support via wpa_supplicant

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # List of services that you want to enable:

  # Enable the OpenSSH daemon
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
}