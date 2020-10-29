#!/bin/bash
set -e

# variables
bgcolor=transparent

# files=$(find . -type f -name "*.mmd" -printf "\"%p\" ")
# files=$(ls **/*.mmd --quoting-style=shell-escape-always -R)
# files=$(find -name **/*.mmd -R)
# files=$(find . -type f -name "*.mmd")
# files=$(find ./ -name "*.mmd" | rev | cut -d '/' -f1 | rev) # only file names
# files=$(ls **/*.mmd -1 -R)
files=$(find . -type f -name "*.mmd")

IFS=$'\n' # make newlines the only separator
for current_filename in $files
do
    # Use just the filename (no path, no extension)
    output_filename=$(basename -s .mmd -a "$current_filename")

    echo "Proceeding '$current_filename' to '$output_filename (svg, png)'"

    # create SVGs
    mkdir -p svg
    /usr/local/bin/mmdc -p /puppeteer-config.json -i $current_filename -o svg/$output_filename.svg

    # create PNGs
    mkdir -p png
    mermaidThemes=$'default\ndark\nforest\nneutral'
    for theme in $mermaidThemes
    do
        mkdir -p png/$theme
        /usr/local/bin/mmdc -p /puppeteer-config.json -i $current_filename -o png/$theme/$output_filename.png --theme "$t" --backgroundColor $bgcolor
    done
done
unset IFS
