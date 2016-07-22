#!/bin/zsh

for file in `dirname $0`/**/*alias*; do
    source "$file"
done
