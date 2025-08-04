{ pkgs, ... }:

{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    waybar
    rofi-wayland
    kitty
    yazi
    nemo
    mako
    zoxide
    hyprpaper
    hyprcursor
    hyprlock
    wlogout
    ly
  ];

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };
}

