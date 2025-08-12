{ inputs, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    wget
    btop
    git
    inputs.anifetch.packages.${pkgs.system}.default
    fastfetch
    unzip
    tmux
    cmake
    gnumake
    gcc
    python3
    eza
    ntfs3g
    parted
  ];
}

