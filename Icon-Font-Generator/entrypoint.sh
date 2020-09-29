#!/bin/sh

echo "Hello 'icon-font-generator' container from n13.org"
echo 'font name     :' $1
echo 'output folder :' $2
echo 'html path     :' $3
echo 'css path      :' $4

if [ -z "$1" ]; then
    echo "Arg 1 is unset or set to the empty string, please add the font name"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Arg 2 is unset or set to the empty string, please add the output folder"
    exit 2
fi

if [ -z "$3" ]; then
    echo "Arg 3 is unset or set to the empty string, please add the html path"
    exit 3
fi

if [ -z "$4" ]; then
    echo "Arg 4 is unset or set to the empty string, please add the css path"
    exit 4
fi

fontName=$1
folderAssetsFonts=$2
folderLayouts=$3
folderSass=$4

mkdir -p $folderAssetsFonts
mkdir -p $folderLayouts
mkdir -p $folderSass

icon-font-generator \
    ./assets/svg/*.svg \
    --out $folderAssetsFonts \
    --name $fontName \
    --css true \
    --csspath $folderSass/svg-webfont.scss \
    --cssfontsurl ../fonts \
    --html true \
    --htmlpath $folderLayouts/demo-webfont.html \
    --prefix svg-icon \
    --tag em