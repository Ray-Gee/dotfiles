export GOPATH="$HOME/go"
export PGPASSWORD="password"
export ZSH="$HOME/.oh-my-zsh"
export VOLTA_HOME="$HOME/.volta"
# ユーザー固有のツールや言語バージョン管理ツールのパスを最初に設定
export PATH="$HOME/.asdf/shims:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.pub-cache/bin:$PATH"
export PATH="$HOME/.tiup/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
# システムのデフォルトパス
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export CGO_ENABLED=1
export PKG_CONFIG_PATH="/usr/local/opt/librdkafka/lib/pkgconfig"
export LD_LIBRARY_PATH="/usr/local/opt/librdkafka/lib"
export LIBRARY_PATH="/usr/local/opt/librdkafka/lib"
export PATH=$PATH:/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin



eval "$(pyenv init -)"
eval "$(rbenv init -)"

# asdfの初期化スクリプトを実行
source /opt/homebrew/opt/asdf/libexec/asdf.sh
source ~/.gvm/scripts/gvm

# pnpmの設定
export PNPM_HOME="/Users/uedaryuichi/Library/pnpm"
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
esac


export GOARCH="amd64"
export GOOS="darwin"

alias ojt='oj t -c "cargo test ./main.rs" -d ./tests/'
alias f="open ."
alias m="minikube"
alias k="kubectl"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshconfig="vim ~/.zshrc"
alias mongo:start='mongod --config /usr/local/etc/mongod.conf'
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias d="docker"
alias dc="docker compose"
alias dp="docker ps"
alias di="docker images"
alias sz="source ~/.zshrc"
alias viz="vim ~/.zshrc"

setopt no_beeP
setopt auto_pushd
setopt pushd_ignore_dups
setopt auto_cd
setopt hist_ignore_dups
setopt share_history
setopt inc_append_history

plugins=(
    git web-search
    zsh-autosuggestions
)
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/uedaryuichi/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/uedaryuichi/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/uedaryuichi/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/uedaryuichi/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<


# for ((i=2;i<256;i++))
# do
#     sudo ifconfig lo0 alias 127.0.0.$i up
# done
# echo 'Bounce1101' | sudo -S ifconfig lo0 alias 127.0.0.2 up
# echo 'Bounce1101' | sudo -S ifconfig lo0 alias 127.0.0.3 up

# bun completions
[ -s "/Users/uedaryuichi/.bun/_bun" ] && source "/Users/uedaryuichi/.bun/_bun"

# bun
export BUN_INSTALL="/Users/uedaryuichi/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# 初回シェル時のみ tmux実行
if [ $SHLVL = 1 ]; then
  tmux a
fi
export EDITOR=vi
eval "$(direnv hook zsh)"

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "b4b4r07/enhancd", use:"init.sh"
zplug load

#if ! zplug check --verbose; then
#    printf "インストールしますか？[y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi

#zplug "zsh-users/zsh-syntax-highlighting", defer:2
#if ! zplug check --verbose; then
#    printf "インストールしますか？[y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi


export PATH=$PATH:$(go env GOPATH)/bin
