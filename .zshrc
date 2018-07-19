# Path to your oh-my-zsh installation.
export ZSH=/Users/heifrank/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias dev="ssh worker@10.103.16.223"

export PATH=/Users/heifrank/Library/Python/2.7/bin:$PATH

export POWERLINE_CONFIG_COMMAND=/Users/heifrank/Library/Python/2.7/bin/powerline-config 
#source /Users/heifrank/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

JAVA_HOME=`/usr/libexec/java_home`
export JAVA_HOME
#export HADOOP_PREFIX="/Users/heifrank/Downloads/hadoop-2.7.2"
#export PYTHONPATH=/Users/heifrank/songyang-install/lib/python2.7/site-packages/:$PYTHONPATH

bindkey '^U' backward-kill-line
vman() {
  vim -c "SuperMan $*"

  if [ "$?" != "0" ]; then
    echo "No manual entry for $*"
  fi
}

DEFAULT_USER=heifrank
# eval $(docker-machine env default)

# alias
alias ls="ls -G"
alias ll="ls -G -al"
alias vi="vim"
alias gff="git flow feature"
alias gfh="git flow hotfix"
alias gfr="git flow release"
alias gf="git flow"
#alias awk="gawk"

GRADLE_HOME=/Users/heifrank/tools/gradle-3.4.1
export GRADLE_HOME
export GOPATH=${HOME}/go
export LC_ALL='en_US.utf-8'
export SCALA_HOME='/Users/heifrank/.local/share/scala'
export PATH=$PATH:${GRADLE_HOME}/bin:/Users/heifrank/.local/bin:${SCALA_HOME}/bin:/Users/heifrank/.local/share/sbt/bin/
export EDITOR=vim

# virtualenvwrapper config
export WORKON_HOME='~/.virtualenvs'
source /usr/local/bin/virtualenvwrapper.sh
export TERM=xterm-256color
