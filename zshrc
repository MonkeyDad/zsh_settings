# .zshrc: Configuration for the Z-Shell.
# P.C. Shyamshankar <sykora@lucentbeing.com>

# Where everything is.
Z=~/.zsh

# Set up a working environment.
source $Z/environment.zsh

# Set up some aliases
source $Z/aliases.zsh

# Set some options.
source $Z/options.zsh

# Define some functions.
source $Z/functions.zsh

# Set up the Z line editor.
source $Z/zle.zsh

# Set the prompt.
source $Z/prompt.zsh

# Set up some colors for directory listings.
if (( C == 256 )); then
    source $Z/ls_colors_256.zsh
fi

# Initialize the completion system.
source $Z/completion.zsh

# Cop-out for dumb terminals.
if [[ $TERM == "dumb" ]]; then
  unsetopt zle
  unsetopt prompt_cr
  unsetopt prompt_subst

  unfunction precmd
  unfunction preexec

  PROMPT='$ '
fi
