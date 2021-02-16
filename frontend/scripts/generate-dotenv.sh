#!/bin/bash

DIRNAME=$(dirname $0)

. $DIRNAME/colors.sh

function render_template() {
  eval "echo \"$(cat $1)\""
}

MY_UID=$(id -u)
MY_GID=$(id -g)

if [ ! -f ./.env ]; then
    echo "Creating .env from template ./data/dotenv.tmpl"
    render_template ./scripts/dotenv.tmpl > ./.env
else
    echo -e "${txtblk}${bakylw}\n"
    echo "WARNING:"
    echo "    .env file already exists, this script will not change the file if it"
    echo "    already exists, please make sure there is a line with the contents below:"
    echo ""
    render_template ./data/dotenv.tmpl
    echo -e "${txtrst}"
fi
