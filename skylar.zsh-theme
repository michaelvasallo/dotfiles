# Create symlink in oh-my-zsh custom directory:
#   ln ~/dotfiles-local/skylar.zsh-theme ~/.oh-my-zsh/custom/themes

local return_status="%(?:%{$fg[green]%}λ:%{$fg[red]%}λ)"

function user_host() {
  if [[ -n $SSH_CONNECTION ]]; then
    me="%n@%m"
  elif [[ $LOGNAME != $USER ]]; then
    me="%n"
  fi
  if [[ -n $me ]]; then
    echo "%{$fg[blue]%}$me "
  fi
}

PROMPT='%B$(user_host)%{$fg[cyan]%}%c $(git_prompt_info)${return_status} %{$reset_color%}%b'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%}) "
