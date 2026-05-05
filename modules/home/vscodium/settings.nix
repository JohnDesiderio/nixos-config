{ ... }:
{
  programs.vscode.profiles.default = {
    userSettings = {
      "extensions.autoUpdate" = false;

      "editor.formatOnSave" = true;
      "editor.formatOnType" = true;
      "editor.formatOnPaste" = true;
      "editor.inlayHints.enabled" = "off";

      "files.autoSave" = "onWindowChange";
      "files.insertFinalNewLine" = true;

      ## C/C++
      "clangd.arguments" = [
        "--clang-tidy"
        "--inlay-hints=false"
      ];

      "nix.serverPath" = "nixd";
      "nix.enableLanguageServer" = true;

      "files.watcherExclude.**.bloop" = true;
      "files.watcherExclude.**.metals" = true;
    };
  };
}
