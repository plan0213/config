# Created by newuser for 5.0.2

autoload -U compinit
compinit
setopt hist_ignore_dups

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

autoload -U colors
colors

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

export PROMPT='%F{green}[%m %~ %*]%%%f '


