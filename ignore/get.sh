#!/bin/bash

GIT_URL="https://raw.githubusercontent.com/marissen/dotfiles/master";
RESET='\033[0m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'

if [[ $1 == "" ]]; then
    echo "The project type is requires" &&
    exit;
fi

TYPE=${1}

# Use diffrent file(s) for linting
if [[ $2 == "" ]]; then
    LINT="${1}"
elif [[ $2 == "default" ]]; then
    LINT=""
else
    LINT="${2}"
fi

function ignoreCopy() {
    echo -e "${YELLOW}Creating ${TYPE} .gitignore${RESET}"
    curl -sS -o .gitignore $GIT_URL/ignore/git/${TYPE}.gitignore
    curl -sS -o .stylelintignore $GIT_URL/ignore/style/${LINT}.stylelintignore
    # add ESLint
}

echo -e "${GREEN}Starting Configuration... ${RESET}"
case "${TYPE}" in
    "--magento"|"-M1")
        ignoreCopy() magento
        ;;
    "--magento2"|"-M2")
        ignoreCopy() magento2
        ;;
    "--wordpress"|"-WP")
        ignoreCopy() wordpress
        ;;
    "--wordpress-themosis"|"-WPT")
        ignoreCopy() wordpress-themosis wordpress
        ;;
    "--laravel"|"-LV")
        ignoreCopy() laravel default
        ;;
    "--akeneo"|"-AK")
        ignoreCopy() akeneo default
        ;;
esac

unset ignoreCopy();