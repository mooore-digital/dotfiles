# Config

These are the config files we use in our projects.

## How to use

We use setup scripts for our projects.
and so for that reason we simply call this script from github in our project script.

```bash
bash -c "$(curl -LsS https://raw.githubusercontent.com/marissen/dotfiles/master/config/get.sh)";
```

You can use it locally from your own directory, via;

```bash
bash <PATH>/dotfiles/config/get.sh;
```

## Files

### Browserslist

Contains browser support config for Tools like Autoprefixer, Babel and postcss-preset-env.

For more about this
Read the original config repo file here: https://github.com/browserslist/browserslist

### Editorconfig

Contains default config for editor formating between users and editors.
This super useful when working with teams.
And pretty much a must for us.

To use this config with PhpStorm or [other editors that don't have it builtin](https://editorconfig.org/#download).

#### PhpStorm Editorconfig plugin

In the Settings/Preferences dialog (⌘,), select Plugins.

Search for `editorconfig`.

Click install and reload PhpStorm

#### VSCode & Atom Editorconfig plugin

_Both editors require there cli tool to be installed,_
_to use these cli install commands._

**Atom**

```bash
apm install editorconfig
```

**VSCode**

```bash
code --install-extension EditorConfig.EditorConfig
```

### Stylelint

Contains our stylelint config file.
This file only extends on our npm package config
[(@marissen/stylelint-config)](https://www.npmjs.com/package/@marissen/stylelint-config).

Which you can install via;

```bash
npm install @marissen/stylelint-config --save-dev
```

The `get.sh` will only add the stylelintrc file from this repo.
You will need to npm install the package your self
