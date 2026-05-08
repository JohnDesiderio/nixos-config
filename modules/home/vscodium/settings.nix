{
  "breadcrumbs.enabled" = true;

  "debug.allowBreakpointsEveryWhere" = true;

  "extensions.autoUpdate" = false;

  "editor.accessibilitySupport" = "off";
  "editor.cursorBlinking" = "solid";
  "editor.fontFamily" = "JetBrainsMono Nerd Font";
  "editor.inlineSuggest.enabled" = true;
  "editor.tabSize" = 2;
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
}
