# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kphoen"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export GEM_PATH=/Users/rambo/.rvm/gems/ruby-1.9.3-p0:/Users/rambo/.rvm/rubies/ruby-1.9.3-p0/lib/ruby/gems/1.9.1:/Users/rambo/.rvm/gems/ruby-1.9.3-p0@global
export PATH=/Users/rambo/.rvm/gems/ruby-1.9.3-p0/bin:/Users/rambo/.rvm/gems/ruby-1.9.3-p0@global/bin:/Users/rambo/.rvm/rubies/ruby-1.9.3-p0/bin:/Users/rambo/.rvm/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/X11/bin:/usr/texbin:/usr/local/git/bin/:/Developer/usr/bin:/Developer/android-sdk-mac_x86/tools:/Developer/android-sdk-mac_x86/platform-tools:/Users/rambo/code/ecl/bin/x86_64_macosx:/Library/Frameworks/JRuby.framework/Versions/Current/bin
alias ec2='ssh -i ~/benjaminhuiling.pem ec2-user@ec2-50-17-120-241.compute-1.amazonaws.com'
alias socky='ssh -D 9667 -i ~/benjaminhuiling.pem ec2-user@ec2-50-17-33-148.compute-1.amazonaws.com'
alias vim='mvim -v'
alias r='rails'
alias u='unicorn_rails'
alias subl='open -a "Sublime Text 2"'
alias todo='subl ~/TODO'
alias cum='bundle exec cucumber'
alias mig='bundle exec rake db:migrate && bundle exec rake db:test:prepare'
alias bi='bundle install'
alias be='bundle exec'
alias gst='git status --short'
alias gp='git pull'
alias gph='RAILS_ENV=production bundle exec rake assets:precompile && git push heroku'
alias hl='heroku logs --tail'
alias wa='cd ~/code/ror/witsauthoring-tool/'
alias wb='cd ~/code/ror/witsvale-beta/'
alias nus='cd ~/code/NUS'
alias cov='RUN_COVERAGE=true rspec spec/'
alias d='cd ~/Desktop'
alias t='touch'
alias rake='noglob rake'
alias cr='cd ~/code/ruby/code_rippa'
# alias tmux="TERM=screen-256color-bce tmux -u"
alias tmux="tmux -u"
alias raz='cd ~/code/NUS/CS4216'
alias mar='cd ~/code/NUS/CS4215'
alias tt='cd ~/code/ror/tuition'
alias qs='cd ~/code/ror/qisahn'
alias tz='cd ~/code/ror/tritzy'

# https://raw.github.com/gist/1688857
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
export BUNDLER_EDITOR=subl
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/usr/local/git/bin


[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
rvm --default use ruby-1.9.3-p194@global 

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
