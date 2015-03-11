case "$TERM" in
  xterm)
    if [ "$COLORTERM" = "gnome-terminal" ] && infocmp gnome-256color >/dev/null 2>&1; then
      export TERM=gnome-256color
      export TERM_ITALICS=true
    elif infocmp xterm-256color >/dev/null 2>&1; then
      case "$COLORTERM" in
        gnome-*|xfce4-*|lilyterm)
          export TERM=xterm-256color;;
      esac
    fi;;
  rxvt*)
    # in the case it's not set yet
    export COLORTERM=rxvt
    export TERM_ITALICS=true;;
esac
