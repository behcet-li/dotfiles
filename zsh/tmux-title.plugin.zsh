function chpwd () {
  if [ -n "$TMUX" ]; then
    local PANES=$(command tmux list-panes 2> /dev/null | wc -l)
    if [ "$PANES" -gt 1 ]; then
      return
    fi

    local GIT=$(command git rev-parse --is-inside-work-tree 2> /dev/null)
    if [ -n "$GIT" ]; then
      tmux rename-window -t${TMUX_PANE} "$(basename "$(command git rev-parse --show-toplevel)")"
    else
      tmux rename-window zsh
    fi
  fi
}
