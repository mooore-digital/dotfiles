#!/bin/bash

GIT_URL="https://raw.githubusercontent.com/mooore-digital/dotfiles/main";
RESET='\033[0m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'

echo -e "${GREEN}Starting Configuration... ${RESET}"

# Install config files
echo -e "${YELLOW}Creating editorconfig${RESET}"
curl -sS -O $GIT_URL/config/.editorconfig

echo -e "${YELLOW}Creating browserslist config${RESET}"
curl -sS -O $GIT_URL/config/.browserslistrc

echo -e "${YELLOW}Creating stylelint config${RESET}"
curl -sS -O $GIT_URL/config/.stylelintrc

# TODO: create eslint
# echo -e "${YELLOW}Creating ESLint config${RESET}"
# curl -sS -O $GIT_URL/config/.eslintrc
