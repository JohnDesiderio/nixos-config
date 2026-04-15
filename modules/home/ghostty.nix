{ host, ... }:
{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;
  };
}
