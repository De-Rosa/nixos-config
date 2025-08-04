{ config, pkgs, ... }:

{
  services.displayManager.ly.enable = true;
  services.libinput.enable = true;

  services.xserver = {
    enable = true;
    xkb.layout = "gb";
    desktopManager.plasma5.enable = false;
    videoDrivers = [ "nvidia" ];
  };

  hardware.graphics.enable = true;

  hardware.nvidia = {
    modesetting.enable = true;
    nvidiaSettings = true;
    open = false;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  fonts.packages = [
    pkgs.nerd-fonts._0xproto
  ];
}

