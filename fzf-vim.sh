#!/bin/bash
#
# In .bashrc
# source ~/repos/DanielViberg/fzf_config/fzf-vim.sh
# bind '"\C-f":"fvim\n"'
#
function fvim() {
  selected=$(find ~/ -mindepth 1 -not -path '*/\.*' | fzf)
  if [[ -n $selected ]]; then
    if [[ -f $selected  ]]; then
        vim "$selected"
    elif [[ -d $selected ]]; then
      cd $selected 
    fi
  fi
}
