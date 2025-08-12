{ config, pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [
      catppuccin
      sensible
      yank
      vim-tmux-navigator
      resurrect 
    ];

    extraConfig = ''
      set-option -s terminal-overrides ",xterm*:Tc"
      set -g @catppuccin_flavour 'macchiato'

      bind h select-pane -L
      bind j select-pane -D
      bind k select-pane -U
      bind l select-pane -R

      set -g base-index 1
      set -g pane-base-index 1
      set-window-option -g pane-base-index 1
      set-option -g renumber-windows on
    '';
  };
}
