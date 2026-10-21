{
  config,
  pkgs,
  ...
}:

{

  programs.foot = {
    enable = true;

    settings = {
      main = {
        font = "Hurmit Nerd Font:size=10";
        shell = "/etc/profiles/per-user/sy0/bin/zsh";
        title = "foot";
      };

      colors-dark = {
        alpah = 0.76;

        # Fondo cálido oscuro / Foreground suave
        background = "303446"; # surface0
        foreground = "c6d0f5"; # text

        regular0 = "494d64"; # base - negro suave
        regular1 = "ea999c"; # red - rosa coral
        regular2 = "a6d189"; # green - verde menta
        regular3 = "e5c890"; # yellow - amarillo pastel
        regular4 = "8caaee"; # blue - azul lavanda
        regular5 = "f4b8e4"; # magenta - rosa pastel
        regular6 = "81c8be"; # cyan - turquesa suave
        regular7 = "b5bfe2"; # subtext1 - gris azulado

        bright0 = "51576d"; # surface1
        bright1 = "ea999c"; # red
        bright2 = "a6d189"; # green
        bright3 = "e5c890"; # yellow
        bright4 = "8caaee"; # blue
        bright5 = "f4b8e4"; # magenta
        bright6 = "81c8be"; # cyan
        bright7 = "a5adce"; # subtext0

        selection-foreground = "303446";
        selection-background = "e5c890";

        cursor = "f5a97f c0caf5";
        urls = "81c8be";
      };

      mouse = {
        hide-when-typing = "yes";
        alternate-scroll-mode = "yes";
      };

      url = {
        style = "curly";
        osc8-underline = "always";
        launch = "xdg-open $${url}";

      };

    };
  };
}
