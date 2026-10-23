{ ... }:
{
  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        viAlias = true; 
        vimAlias = true; 

        preventJunkFiles = true;

        undoFile = {
          enable = true;
        };

        opts = {
          cursorcolumn = true;
          cursorline = true;
          shiftwidth = 2;
          # signcolumn = "yes:1";
        };

        theme = {
          enable = true;
          name = "gruvbox";
          style = "dark";
        };

        statusline = {
          lualine = {
            enable = true;
            setupOpts = {
              sections = {
                activeSection.c = [
                  ''
                    {
                      "diff",
                      colored = true,
                      diff_color = {
                        added = 'DiffAdd',
                        modified = 'DiffChange',
                        removed = 'DiffDelete',
                      },
                      symbols = {
                        added = '[+] ',
                        modified = '[~] ',
                        added = '[-] ',
                      },
                    }
                  ''
                ];
                lualine_a = ["mode"]; 
                lualine_y = []; 
                lualine_z = ["location"]; 
              };
            };
          }; 
        };

        telescope.enable = true;

        autocomplete.nvim-cmp.enable = true;

        treesitter = {
          enable = true;
          highlight.enable = true;
        };

        languages = {
          json = {
            enable = true;
            lsp.enable = true;
          };

          nix = {
            enable = true;
            lsp.enable = true;
          };

          python = {
            enable = true;
            format.type = ["ruff"];
            lsp = {
              enable = true;
              servers = [ "pyrefly" ];
            };
            extraDiagnostics.enable = false;
          };

          rust = {
            enable = true;
            lsp.enable = true;
          };

          sql = {
            enable = true;
            extraDiagnostics = {
              enable = true;
              types = ["sqruff"];
            };
            format = {
              enable = true;
              type = ["sqruff"]; 
            };
            treesitter.enable = true;
            lsp = {
              enable = true;
              servers = ["sqls"];
            };
          };

          typescript = {
            enable = true;
            lsp.enable = true;
          };

          enableTreesitter = true;          
        };

        visuals.cinnamon-nvim = {
          enable = true;
          setupOpts = {
            keymaps.basic = true;
            options.max_delta_time = 100;
          };
        };

        filetree = {
          nvimTree = {
            enable = true;
          };
        };

        tabline = {
          nvimBufferline.enable = false;
        };

        git = {
          enable = true;
          gitsigns = {
            enable = true;
            codeActions.enable = false; # throws an annoying debug message
          };
        };
      };
    };
  };
}
