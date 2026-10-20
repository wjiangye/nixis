{
  config,
  pkgs,
  username,
  ...
}:

{
  imports = [
    ./editor/hx.nix
    ./terminal/foot.nix

  ];

  home.username = "${username}";
  home.homeDirectory = "/home/sy0";

  home.packages = with pkgs; [
    fastfetch
    cmatrix
    quickshell
    siyuan

    nerd-fonts.hurmit
  ];

  programs.git = {
    enable = true;
    settings = {
      user.name = "${username}";
      user.email = "sy0@nixos.btw";
    };
  };

  programs.bash = {
    enable = true;

    shellAliases = {
      ll = "ls -lah";
      gs = "git status";
      nix-reb = "sudo nixos-rebuild switch --flake /home/sy0/nixos#nixb";
      nix-pkgs = "nix search nixpkgs";
      nix-grb = "sudo nix-collect-garbage -d";
      llm-serv = "llama serve -hf";
      llm-cli = "llama-cli -hf";
      wh-cli = "whisper-cli -m";

      # Nix develop
      gplus = "g++ -std=c++23 -Wall -Wextra -Wpedantic";

    };

  };

  home.stateVersion = "26.05";
}
