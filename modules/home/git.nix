{ pkgs, username, ... }:
{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "JohnDesiderio";
        email = "johnfrancisdesiderio@gmail.com";
      };
    };
  };
}
