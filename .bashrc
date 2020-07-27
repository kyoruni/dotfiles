# ブランチ名を表示させるために、gitのスクリプトを読み込む
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
# addされていない変更に$マークをつける
GIT_PS1_SHOWDIRTYSTATE=true

# 気分で好きな色を
RED="\[\033[31m\]"
GREEN="\[\033[32m\]"
BROWN="\[\033[33m\]"
BLUE="\[\033[34m\]"
MAGENTA="\[\033[35m\]"
CYAN="\[\033[36m\]"
WHITE="\[\033[37m\]"

function _random_symbol() {
    local symbols=(
        '\U1F363'   # :sushi:
        '\U1f36E'   # :custard:
        '\U1F359'   # :rice_ball:
        '\U1F31F'   # :glowing star:
        '\U1F308'   # :rainbow:
        '\U1F5FF'   # :moai:
        '\U1F389'   # :tada:
        '\U1F47E'   # :space_invader:
        '\U1F64F'   # :pray:
        '\U1F607'   # :innocent:
        '\U1F34E'   # :apple:
        '\U1F980'   # :crab:
    )
    echo -e "${symbols[$(($RANDOM % ${#symbols[@]}))]}"
}

USER_NAME="${CYAN}\u"
HOST_NAME="\h"
DIRECTORY_PATH="${WHITE}\w"
# シングルクォートじゃないと動かなかった
BRANCH_NAME="${MAGENTA}"
BRANCH_NAME+='$(__git_ps1)'
CONSOLE="${WHITE}$ "

PS1="${USER_NAME}$(_random_symbol): ${DIRECTORY_PATH}${BRANCH_NAME}${CONSOLE}"

alias dcu='docker-compose up -d'
alias dcd='docker-compose down'
alias dcub='docker-compose up -d --build'
alias ls='ls -FG'
alias ll='ls -alFG'
