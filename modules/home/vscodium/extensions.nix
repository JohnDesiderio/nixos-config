{ pkgs, ... }:
{
  programs.vscode.profiles.default = {
    extensions = [
      ## Languages
      jnoortheen.nix-ide
      arrterian.nix-env-selector
      llvm-vs-code-extensions.vscode-clangd
      scalameta.metals
      scala-lang.scala
    ];
  };
}
