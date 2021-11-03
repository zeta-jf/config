# Setup fzf
# ---------
if [[ ! "$PATH" == */home/juefei/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/juefei/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/juefei/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/juefei/.fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_OPTS="--height 50% --layout=reverse"
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,build,dist} --type f"
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat -n --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -10000'
