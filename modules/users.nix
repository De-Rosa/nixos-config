{ pkgs, ... }:

{
  users.users.square = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [ tree ];
  };
}

