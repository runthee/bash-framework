#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
#
# Date: 07.12.2016

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" && exit 1

function err_title() {
  echo -e "${ERROR_COLOR_TITLE} ${1} ${FONT_RESET}"
}

function err_msg() {
  echo -e "${FONT_ERR} ✘ ${1} ${FONT_RESET}"
}

# error [ message ] [ title ]
function err() {
  case ${#} in
    2)
      err_title "${2}"
      err_msg "${1}"
      ;;
    1)
      err_msg "${1}"
      ;;
    *)
      err_title "${ERROR_MSG_DEFAULT}"
      ;;
  esac
}