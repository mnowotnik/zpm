#!/usr/bin/env zsh

if [[ -f ~/.zpm-cache.zsh ]]; then
  source ~/.zpm-cache.zsh
else
  if [[ ! -f ~/.zpm/zpm.zsh ]]; then
    git clone https://github.com/zpm-zsh/zpm ~/.zpm
  fi
  source ~/.zpm/zpm.zsh
fi

zpm a/b,apply:path,path:AQ

### Core plugins
zpm                     \
  zpm-zsh/core-config   \
  zpm-zsh/check-deps    \


### Compatibility
zpm if termux           \
  zpm-zsh/termux        \


### 3party plugins
zpm                                                 \
  zpm-zsh/minimal-theme                             \
  zpm-zsh/ls                                        \
  zpm-zsh/tmux                                      \
  zpm-zsh/colorize                                  \
  zpm-zsh/ssh                                       \
  zpm-zsh/dot                                       \
  zpm-zsh/dircolors-material                        \
  zpm-zsh/undollar                                  \
  zsh-users/zsh-completions,apply:fpath,fpath:/src  \


zpm if-not ssh                       \
  zpm-zsh/readers                    \
  zpm-zsh/clipboard                  \
  zpm-zsh/autoenv                    \
  zpm-zsh/mysql-colorize             \
  zpm-zsh/zshmarks                   \
  voronkovich/gitignore.plugin.zsh   \
  psprint/history-search-multi-word  \
  zdharma/fast-syntax-highlighting   \
  tarruda/zsh-autosuggestions        \


if [[ -f ~/.zshrc.local ]]; then
  source ~/.zshrc.local 
fi
