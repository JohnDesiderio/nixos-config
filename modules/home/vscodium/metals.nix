{ pkgs, ... }:
let
  vscode-lib = import ./lib.nix;
  inherit (vscode-lib) configuredExtension;
  inherit (pkgs) vscode-utils vscode-extensions;
in
configuredExtension {
  extension = vscode-extensions.scalameta.metals;
  foramtterFor = [ "scala" ];
  settings = {
    "metals.serverProperties" = [
      "-Dmetals.verbose=true"
      "-Xmx4g"
      "-Xss10m"
      "-XX:+CrashOnOutOfMemoryError"
    ];
    "metals.superMethodLensesEnabled" = false;
    "metals.enableSemanticHighlighting" = false;
    # "metals.startMcpServer" = false;
    # "metals.mcpClient" = false;
  };
  keybindings = [
    {
      key = "ctrl+i";
      command = "metals.build-import";
    }
    {
      key = "shift+alt+ctrl+i";
      command = "metals.toggle-implicit-conversions-and-classes";
    }
    {
      key = "shift+ctrl+i";
      command = "metals.toggle-implicit-parameters";
    }
    {
      key = "shift+alt+ctrl+t";
      command = "metals.toggle-show-inferred-type";
    }
    {
      key = "shift+alt+ctrl+up";
      command = "metals.goto-super-method";
    }
  ];
}
