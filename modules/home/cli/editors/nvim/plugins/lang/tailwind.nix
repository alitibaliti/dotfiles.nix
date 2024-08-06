{
  inputs,
  pkgs,
  config,
  ...
}: {
  programs.nixvim = {
    plugins = {
      conform-nvim = {
        formattersByFt = {
          html = ["rustywind"];
        };

        formatters = {
          rustywind = {
            command = "${pkgs.rustywind}/bin/rustywind";
          };
        };
      };

      lsp.servers = {
        tailwindcss = {
          enable = true;
          filetypes = ["html"];
        };
      };
    };
  };
}
