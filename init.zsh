#!/bin/zsh

LSB_DISTRIBUTION=(`eval lsb_release -si`)

for file in `dirname $0`/**/*alias*; do
    source "$file"
done




