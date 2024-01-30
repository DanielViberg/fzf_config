#!/bin/bash

selected=$(find ~/ -mindepth 1 -not -path '*/\.*' | fzf)
if [[ -n $selected ]]; then
  if [[ -f $selected  ]]; then
      vim "$selected"
  elif [[ -d $selected ]]; then
      cd "$selected"
  fi
fi
