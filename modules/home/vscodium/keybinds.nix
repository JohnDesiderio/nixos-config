{ vscode-lib }:
let
  inherit (vscode-lib) overrideKeyBinding;
in
[
  {
    key = "ctrl-k ctrl-n";
    command = "explorer.newFile";
  }
  {
    key = "ctrl-k ctrl-b";
    command = "explorer.newFolder";
  }
  {
    key = "ctrl+alt+z";
    command = "git.revertSelectedRanges";
  }
  {
    key = "ctrl+alt+t";
    command = "-workbench.action.closeOtherEditors";
  }
  {
    key = "ctrl+q";
    command = "editor.action.commentLine";
    when = "editorTextFocus && !editorReadonly";
  }
  {
    key = "ctrl+s";
    command = "workbench.action.files.saveFiles";
  }
]
