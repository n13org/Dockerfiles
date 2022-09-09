#!/bin/bash

### USAGE
# $1: path to assets

# Save the root folder of the current script
declare SCRIPT_FOLDER=$(echo $(dirname $0))

declare ASSETS_DIR="${1:-$SCRIPT_FOLDER/../assets}"
declare ASSETS_SVG_DIR="$ASSETS_DIR/svg"
declare ASSETS_3RDPARTY_DIR="$ASSETS_DIR/3rdParty"
declare ASSETS_3RDPARTY_CSS_DIR="$ASSETS_3RDPARTY_DIR/css"
declare ASSETS_3RDPARTY_FONTS_DIR="$ASSETS_3RDPARTY_DIR/webfonts"

mkdir -p $ASSETS_SVG_DIR
mkdir -p $ASSETS_3RDPARTY_DIR
mkdir -p $ASSETS_3RDPARTY_CSS_DIR
mkdir -p $ASSETS_3RDPARTY_FONTS_DIR

# Install fontawesome via npm
# npm install --save-dev font-awesome
npm install --save-dev @fortawesome/fontawesome-free@^5
# npm install --save-dev @fortawesome/fontawesome-free

# Copy files from node_modules to 3rdParty
cp ./node_modules/@fortawesome/fontawesome-free/webfonts/*.* "$ASSETS_3RDPARTY_FONTS_DIR/"
cp ./node_modules/@fortawesome/fontawesome-free/css/brands.min.css "$ASSETS_3RDPARTY_CSS_DIR/fa-brands.min.css"
cp ./node_modules/@fortawesome/fontawesome-free/css/fontawesome.min.css "$ASSETS_3RDPARTY_CSS_DIR/fa-fontawesome.min.css"
cp ./node_modules/@fortawesome/fontawesome-free/css/solid.min.css "$ASSETS_3RDPARTY_CSS_DIR/fa-solid.min.css"

# Copy SVGs from fontawesome (BRANDS)
cp ./node_modules/@fortawesome/fontawesome-free/svgs/brands/facebook.svg $ASSETS_SVG_DIR/fa-brands-facebook.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/brands/github.svg $ASSETS_SVG_DIR/fa-brands-github.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/brands/gitlab.svg $ASSETS_SVG_DIR/fa-brands-gitlab.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/brands/instagram.svg $ASSETS_SVG_DIR/fa-brands-instagram.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/brands/stack-overflow.svg $ASSETS_SVG_DIR/fa-brands-stack-overflow.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/brands/twitter.svg $ASSETS_SVG_DIR/fa-brands-twitter.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/brands/whatsapp.svg $ASSETS_SVG_DIR/fa-brands-whatsapp.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/brands/wordpress.svg $ASSETS_SVG_DIR/fa-brands-wordpress.svg

# Copy SVGs from fontawesome (SOLID)
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/arrow-down.svg $ASSETS_SVG_DIR/fa-solid-arrow-down.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/arrow-up.svg $ASSETS_SVG_DIR/fa-solid-arrow-up.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/arrow-circle-down.svg $ASSETS_SVG_DIR/fa-solid-arrow-circle-down.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/arrow-circle-up.svg $ASSETS_SVG_DIR/fa-solid-arrow-circle-up.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/asterisk.svg $ASSETS_SVG_DIR/fa-solid-asterisk.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/at.svg $ASSETS_SVG_DIR/fa-solid-at.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/balance-scale.svg $ASSETS_SVG_DIR/fa-solid-balance-scale.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/bars.svg $ASSETS_SVG_DIR/fa-solid-bars.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/chart-line.svg $ASSETS_SVG_DIR/fa-solid-chart-line.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/clock.svg $ASSETS_SVG_DIR/fa-solid-clock.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/cloud.svg $ASSETS_SVG_DIR/fa-solid-cloud.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/cog.svg $ASSETS_SVG_DIR/fa-solid-cog.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/comment-dots.svg $ASSETS_SVG_DIR/fa-solid-comment-dots.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/edit.svg $ASSETS_SVG_DIR/fa-solid-edit.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/envelope.svg $ASSETS_SVG_DIR/fa-solid-envelope.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/envelope-open-text.svg $ASSETS_SVG_DIR/fa-solid-envelope-open-text.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/eye.svg $ASSETS_SVG_DIR/fa-solid-eye.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/globe.svg $ASSETS_SVG_DIR/fa-solid-globe.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/industry.svg $ASSETS_SVG_DIR/fa-solid-industry.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/info.svg $ASSETS_SVG_DIR/fa-solid-info.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/layer-group.svg $ASSETS_SVG_DIR/fa-solid-layer-group.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/mobile.svg $ASSETS_SVG_DIR/fa-solid-mobile.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/phone.svg $ASSETS_SVG_DIR/fa-solid-phone.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/rss.svg $ASSETS_SVG_DIR/fa-solid-rss.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/share-alt.svg $ASSETS_SVG_DIR/fa-solid-share-alt.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/search.svg $ASSETS_SVG_DIR/fa-solid-search.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/search-minus.svg $ASSETS_SVG_DIR/fa-solid-search-minus.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/tags.svg $ASSETS_SVG_DIR/fa-solid-tags.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/thumbs-down.svg $ASSETS_SVG_DIR/fa-solid-thumbs-down.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/thumbs-up.svg $ASSETS_SVG_DIR/fa-solid-thumbs-up.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/user.svg $ASSETS_SVG_DIR/fa-solid-user.svg
cp ./node_modules/@fortawesome/fontawesome-free/svgs/solid/user-secret.svg $ASSETS_SVG_DIR/fa-solid-user-secret.svg

# Install Iconfinder SVGs
curl https://www.iconfinder.com/icons/4691238/download/svg/512 --output $ASSETS_SVG_DIR/iconfinder-jekyll.svg

# Install Icons from Wikipedia
curl https://upload.wikimedia.org/wikipedia/commons/2/25/NuGet_project_logo.svg --output $ASSETS_SVG_DIR/nuget.svg

# Create Web-Font
# docker build $SCRIPT_FOLDER/.. --file Dockerfile --tag n13org/icon-font-generator
# docker run -it --rm -v $(pwd):/home/work n13org/icon-font-generator "fnt-svg-webfont" "./assets/fonts" "./_layouts" "./_sass"
docker run -it --rm -v $(pwd):/home/work n13org/icon-font-generator "fnt-svg-webfont" "./assets/fonts" "./_layouts" "./_sass"
