export ZPLUG_HOME=$HOME/.zplug

if [ ! -d $ZPLUG_HOME ]; then
    echo "Clone ZPLUG from Github ..."
    git clone https://github.com/zplug/zplug $ZPLUG_HOME
    echo "Done!"
    echo
fi

source $ZPLUG_HOME/init.zsh

# Oh-my-zsh plugins
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/autojump", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/ubuntu", from:oh-my-zsh
zplug "plugins/dnf", from:oh-my-zsh
zplug "plugins/archlinux", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/web-search", from:oh-my-zsh

# Theme
zplug "romkatv/powerlevel10k", as:theme, depth:1

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
#zplug "chitoku-k/fzf-zsh-completions"

if ! zplug check; then
    zplug install
fi

zplug load
