{ ... }:
{
  programs.git = {
    enable = true;

    settings = {
      pull.rebase = true;

      user = {
        name = "JohnDesiderio";
        email = "johnfrancisdesiderio@gmail.com";
      };

      init.defaultBranch = "main";
    };
  };
}
