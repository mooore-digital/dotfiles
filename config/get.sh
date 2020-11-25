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

read -p "Also add grumphp? [Y/n] "
echo ""
if [[ ! $REPLY =~ ^[nN]|[nN][oO]$ ]]; then
  TYPE=""

  echo "Grumphp types;"
  echo " - magento2"
  echo " - laravel"
  echo " - symfony"
  echo " - (blank = default)"
  read -p "Type: " PHP_TYPE && echo ""
  if [[ "$PHP_TYPE" =~ ^[mM][2]|"magento"$ ]]; then TYPE="magento2"; fi
  if [[ "$PHP_TYPE" =~ ^"laravel"$ ]]; then TYPE="laravel"; fi
  if [[ "$PHP_TYPE" =~ ^"symfony"$ ]]; then TYPE="symfony"; fi

  echo -e "${YELLOW}Creating stylelint config${RESET}"
  if [[ ! -z "$TYPE" ]]; then
    curl -sS -O $GIT_URL/config/${TYPE}.grumphp.yml
  else
    curl -sS -O $GIT_URL/config/grumphp.yml
  fi
fi;

# TODO: create eslint
# echo -e "${YELLOW}Creating ESLint config${RESET}"
# curl -sS -O $GIT_URL/config/.eslintrc
