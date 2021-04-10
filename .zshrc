# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/gsc/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
alias sp='sudo apt-get'
alias sps='sudo apt install'
alias spss='apt search'
alias spr='sudo apt remove'
alias spsyu='sudo apt update&&sudo apt upgrade'
alias spsy='sudo apt update'
alias spq='apt show'
alias spql='sudo apt-file list'
alias spc='sudo apt-get autoremove&&sudo apt-get autoclean'
alias sv='sudo vim'
alias spu='sudo pacman -U'
alias clearRecent='rm /home/gsc/.local/share/recently-used.xbel'
alias vihosts='sudo vim /etc/hosts'
#alias chconf="sudo vim /etc/rc.conf"
alias chhosts="sv /etc/hosts"
alias chresolv="sv /etc/resolv.conf"
alias chvpnresolv="sudo cp /etc/resolv.conf.lab /etc/resolv.conf"
alias chgrub="sv /etc/default/grub"
alias xterm='xterm -font -*-droid\ sans-*-*-*-*-*-*-*-*-*-*-*-*'
alias iotop='sudo iotop'
alias top='htop'
alias opacman='pacman-optimize && sync'
alias punzip='python2 /home/gsc/Documents/punzip.py'
alias mkp='makepkg -c -s -i'
alias mks='mksrcinfo'
alias ya='yaourt'
alias ssc='sudo systemctl'
alias chawe='vim ~/.config/awesome/rc.lua'

alias svnaddall='svn add --force * --auto-props --parents --depth infinity -q'
fortune | cowsay -n -f $(ls /usr/share/cowsay/cows/ | shuf -n1)
HISTFILESIZE=10000
HISTSIZE=5000
ssh() {
    if ! ssh-add -l &>/dev/null; then
        ssh-add </dev/null &>/dev/null
    fi
    command ssh "$@"
}
alias cdconda='cd /home/gsc/anaconda3/bin/'
alias jupyter3conda='source ~/anaconda3/bin/activate && /home/gsc/anaconda3/bin/jupyter'
alias python3conda='/home/gsc/anaconda3/bin/python'
alias pip3conda='/home/gsc/anaconda3/bin/pip'
export M2_HOME='/opt/maven/'
alias kernprof='~/anaconda3/bin/kernprof'
export WINEARCH=win32
export GOPATH='/home/gsc/KuaiPan/Projects/Go/'
export NODE_PATH='/usr/lib/node_modules/'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ss4proxy='export http_proxy="http://127.0.0.1:7777" && export https_proxy="http://127.0.0.1:7777"'
alias ssfproxy='export http_proxy="http://127.0.0.1:1080" && export https_proxy="http://127.0.0.1:1080"'
alias cproxy="export http_proxy='http://127.0.0.1:7890' && export https_proxy='http://127.0.0.1:7890'"
alias go="/home/gsc/Documents/Apps/go/bin/go"
alias gopath="export PATH='/home/gsc/Documents/Apps/go/bin/:/home/gsc/KuaiPan/Projects/Go/bin':$PATH"
alias scu="systemctl --user"

