# Prompt Scheme
# ===========================================
function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function prompt_init {

  setopt PROMPT_SUBST
  # Prompts  
  export PS1='[%F{39}%n%f]:%1~%F{172}$(parse_git_branch)%f$ ' 
  export PS2='> '
  export PS3='+ '
}

# Aliases
# ============================================
function alias_init {
  # LS
  alias ls='ls -G1'
}

prompt_init
alias_init
