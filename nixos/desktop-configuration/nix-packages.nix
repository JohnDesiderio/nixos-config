{ inputs, pkgs, ... }:
{
  nixpkgs = {
    # You can add overlays here
    overlays = [
        # Add overlays your own flake exports (from overlays and pkgs dir)
        inputs.self.overlays.additions
        inputs.self.overlays.modifications
        inputs.self.overlays.unstable-packages

        # You can also add overlays from other flakes:
        # neovim-nightly-overlay.overlays.default

        # Or define it inlines, for example:=
        # (final: prev: {
        #    hi = final.hello.overrideAttrs (oldAttrs: {
        #      patches = [ ./change-hello-to-hi.patch ];
        #    })
        # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allow = true;
    };
  };

  programs.firefox.enable = true;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Nano is installed by default
    vim 
    tree
  ];
}
