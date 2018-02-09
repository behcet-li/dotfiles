# vi: set ft=zsh :
export DISABLE_UNTRACKED_FILES_DIRTY=true

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%}±%{$reset_color%}"

local return_code="%(?..%{$fg[white]%}%? %{$reset_color%})"

# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Prompt-Expansion
PROMPT='%{$fg[blue]%}%3c \
$(git_prompt_info)\
${return_code}\
%{$fg[white]%}%(!.#.»)%{$reset_color%} '

PROMPT2='%{$fg[white]%}> %{$reset_color%}'
