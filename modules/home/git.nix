{ pkgs, username, ... }:
{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "John Desiderio";
	      email = "johnfrancisdesiderio@gmail.com";
      };
    };
  };
}
