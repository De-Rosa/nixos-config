{ config, pkgs, ... }:

{
  home.file.".config/hypr/hyprland.conf".source = ./../dotfiles/hypr/hyprland.conf;
  home.file.".config/hypr/hyprlock.conf".source = ./../dotfiles/hypr/hyprlock.conf;
  home.file.".config/hypr/hyprpaper.conf".source = ./../dotfiles/hypr/hyprpaper.conf;
}

