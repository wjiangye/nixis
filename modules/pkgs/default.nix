{
  config,
  pkgs,
  pkgs-stable,
  ...
}:

{

  programs.virt-manager.enable = true;

  virtualisation.libvirtd = {
    enable = true;
    qemu.swtpm.enable = true;
  };

  environment.systemPackages = with pkgs; [
    btop
    nvtopPackages.amd
    yazi
    w3m

    eza
    bat
    ripgrep
    fd
    fzf
    jq

    wl-clipboard
    cliphist
    grim
    slurp
    gocryptfs

    librewolf
    pkgs-stable.libreoffice
    pkgs-stable.kdePackages.okular
    vlc
    bottles

    llama-cpp-vulkan
    ffmpeg
    whisper-cpp-vulkan

    nethack
    bastet
  ];

  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };
  programs.gamescope = {
    enable = true;
    capSysNice = false;
  };
  services.flatpak.enable = true;

}
