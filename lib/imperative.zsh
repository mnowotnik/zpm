#!/usr/bin/env zsh

compinit -i -C -d "${ZPM_COMPDUMP}"

zpm load zpm-zsh/helpers zpm-zsh/colors zpm-zsh/background

TMOUT=1
add-zsh-hook background _ZPM_Background_Initialization

function source() {
  if [[ ! "${1}.zwc" -ot "${1}" ]]; then
    zcompile "${1}" 2>/dev/null
  fi

  builtin source "$1"
}
