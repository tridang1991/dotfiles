# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zs="zeus s"
alias zt="zeus rspec"
alias zc="zeus c"
alias zr="zeus rake"
alias zg="zeus g"
alias zd="zeus d"
alias ctags="`brew --prefix`/bin/ctags"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ruby heroku bundler)

source $ZSH/oh-my-zsh.sh

# bindkey "^R" history-incremental-search-backward

# Customize to your needs...
export EC2_HOME=~/.ec2
export EC2_PRIVATE_KEY=~/.ec2/pk-XUYVOZGS6BUUF76DR3VVA2OTF7FOABVZ.pem
export EC2_CERT=~/.ec2/cert-XUYVOZGS6BUUF76DR3VVA2OTF7FOABVZ.pem
export BUNDLER_EDITOR=mvim
export EDITOR=vim
export LC_ALL=en_US.UTF-8
export JAVA_HOME=$(/usr/libexec/java_home)
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
export KEYPAY_BASE_URI=https://eh-staging.yourpayroll.com.au/api/v2/
export KEYPAY_DEBUG=true

### Added by the Heroku Toolbelt
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/tienle/.rvm/bin:/usr/local/heroku/bin:${JAVA_HOME}/bin:${EC2_HOME}/bin:$PATH"

[[ $TERM = "screen-256color" ]] && cd ..;1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

cdpath=(. $HOME/code $HOME/fun )
#__rvm_project_rvmrc

