set -g GHQ_SELECTOR fzf
set -g __done_notify_sound 1

# less with GNU Source-highlight
set -x LESSOPEN "| /usr/local/bin/src-hilite-lesspipe.sh  %s"
set -x LESS "-R"

if test "$TERM_PROGRAM" != "vscode" && test -z $TMUX && status --is-login
  set -l IFS
  set -l sessions (tmux list-sessions 2> /dev/null)

  if test -z "$sessions"
    tmux new-session -s default
  else
    set -l session_id (echo "$sessions" | fzf --select-1 --prompt "Select tmux session to attach >" | cut -d : -f 1)

    if test -n "$session_id"
      tmux attach -t "$session_id"
    end
  end
end

# asdf
source /usr/local/opt/asdf/libexec/asdf.fish

# Google Cloud SDK
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc