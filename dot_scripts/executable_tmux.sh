#!/bin/bash
# Auto-start tmux for interactive shells, excluding nested tmux sessions and SSH/VSCode terminals if preferred

if [ -z $TMUX ] && [ -n $PS1 ]; then
    # Create a unique session name using the current timestamp to avoid naming conflicts
    SESSION_NAME="session_$(date +%s)"
    exec tmux new-session -s $SESSION_NAME
fi
