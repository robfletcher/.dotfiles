#!/bin/zsh
if (( ! $+commands[pokey] )); then
  airtool install pokey --target pokey-production
  airtool install pokey-adapters --target pokey-adapters-production
fi
