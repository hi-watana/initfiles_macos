# vim:set foldmethod=marker:

# color and PS1 settings# {{{
autoload -Uz colors
colors

# # light background
# COLOR_1="%{[38;5;163m%}"
# COLOR_2="%{[38;5;030m%}"
# COLOR_END="%{[0m%}"

# dark background
COLOR_1="%{[38;5;208m%}"
COLOR_2="%{[38;5;039m%}"
COLOR_END="%{[0m%}"

export PS1="[${COLOR_1}${USER}${COLOR_END}@${HOST%%.*} ${COLOR_2}%1~${COLOR_END}]%(!.#.$) "
#export PS1="[%{${fg[red]}%}%n%{${reset_color}%}@%m %{${fg[blue]%}%1~%{${reset_color}%}]%(!.#.$) "
# }}}

bindkey -v
bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward
export PATH=/usr/local/bin:$PATH
export EDITOR="/usr/local/bin/vim"

# completion settings# {{{
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# }}}

# zsh_history settings# {{{
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000


setopt hist_ignore_dups
# }}}
#setopt auto_cd
# alias settings# {{{
alias ls="ls -G"
alias la="ls -a"
alias mv="mv -i"
alias cp="cp -i"
alias rmb="rm *~; rm .*~"
alias grep="grep --color=auto -n"
alias vi="vim"
#alias emacs="/usr/local/Cellar/emacs/25.2/bin/emacs"
alias ctags="/usr/local/Cellar/ctags/5.8_1/bin/ctags"
alias matlab="/Applications/MATLAB_R2016b.app/bin/matlab -nodesktop"
alias updatedb="/usr/libexec/locate.updatedb"
#alias rm="rm -i"
## }}}

# color_test# {{{
# function color_test() {
#     for col in {000..255}
#     do
#         echo -n "[38;5;${col}m ${col}"
#     done
#     echo ""
# }
# }}}

# auto-fu settings# {{{
# source $HOME/.zsh/auto-fu.zsh/auto-fu.zsh
# function zle-line-init(){
#      auto-fu-init
# }
# zle -N zle-line-init
# # 「-azfu-」を表示させないための記述
# zstyle ':auto-fu:var' postdisplay $''
# # }}}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/anaconda3/bin:/usr/local/bin:/usr/local/opt/sqlite/bin:$PATH"
