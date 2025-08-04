{ config, pkgs, ... }:

{
  home.username = "square";
  home.homeDirectory = "/home/square";

  home.stateVersion = "25.05";

  imports = [
    ./programs/nvim.nix
    ./programs/kitty.nix
    ./programs/tmux.nix
    ./programs/rofi.nix
    ./programs/waybar.nix
    ./programs/hypr.nix
    ./programs/fastfetch.nix
  ];
}

