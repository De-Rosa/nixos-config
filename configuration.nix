{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix

    ./modules/users.nix
    ./modules/devtools.nix
    ./modules/programs.nix
    ./modules/hypr.nix
    ./modules/desktop.nix

  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" ];

  networking.hostName = "pentagon";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/London";

  console.keyMap = "uk";

  nixpkgs.config.allowUnfree = true;
  services.flatpak.enable = true;

  system.stateVersion = "25.05";
}

