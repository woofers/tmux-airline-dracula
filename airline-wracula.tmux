#!/usr/bin/env bash

main() {

    ## Colors
    black='colour147'
    white='colour16'
    gray='colour236'
    red='colour147'
    orange='colour0'
    green='colour10'
    selection='colour233'
    selection_text='colour7'

    ## Icons
    left_sep=''
    right_sep=''
    left_alt_sep=''
    right_alt_sep=''

    ## Powerline
    tmux set-option -g status on
    tmux set -wg mode-style "bg=${selection},fg=${selection_text}"
    tmux set-option -g status-left-length 100
    tmux set-option -g status-right-length 100
    tmux set-option -g status-bg "${orange}"
    tmux set-option -g pane-active-border-fg "${green}"
    tmux set-option -g pane-border-fg "${gray}"
    tmux set-option -g message-bg "${orange}"
    tmux set-option -g message-fg "${white}"
    tmux set-option -g message-command-bg "${orange}"
    tmux set-option -g message-command-fg "${white}"
    tmux set-option -g status-left " #I  "
    tmux set-option -g status-left-style "fg=${white},bg=${orange},bold"
    tmux set-option -g status-right "${left_sep}#[bg=${white},reverse] $(music --status) ${left_alt_sep} #H @ %d %b %Y "
    tmux set-option -g status-right-style "fg=${red},bg=${orange}"
    tmux set-window-option -g window-status-activity-style "fg=${white},bg=${gray}"
    tmux set-window-option -g window-status-separator ''
    tmux set-window-option -g window-status-format ' #I #W '
    tmux set-window-option -g window-status-style "fg=${black},bg=${orange}"
    tmux set-window-option -g window-status-current-format \
    "${right_sep}#[fg=${white}] #I ${right_alt_sep} #W #[fg=${orange},reverse]${right_sep}"
    tmux set-window-option -g window-status-current-style "fg=${orange},bg=${red}"
    tmux set -g pane-active-border-style "fg=${red}"

    ## Show Prefix
    tmux set-option -g status-left "#[fg=${white},bg=${red}]#{s/root//:client_key_table}"
}

main

# vim: set filetype=bash
