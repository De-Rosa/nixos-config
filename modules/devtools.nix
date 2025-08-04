{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    wget
    btop
    git
    fastfetch
    unzip
    tmux
    cmake
    gnumake
    gcc
    python3
    eza
    ntfs3g
  ];
}

