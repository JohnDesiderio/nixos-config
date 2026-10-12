{ ... }:
{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "JohnDesiderio";
        name = "johnfrancisdesiderio@gmail.com";
      };

      init.defaultBranch = "main";
    };
  };
}