# Ignore

These are the ignore files we use in our projects.

## How to use

We use setup scripts for our projects.
and so for that reason we simply call this script from github in our project script.

```bash
bash -c "$(curl -LsS https://raw.githubusercontent.com/marissen/dotfiles/master/ignore/get.sh)";
```

You can use it locally from your own directory, via;

```bash
bash <PATH>/dotfiles/ignore/get.sh;
```

## Files

Each ignore is project based.
And has a prefix of this in the name of the ignore file.

In case the ignore has no prefix.
It will uses the default ignore instead.

_git is our entry and requires a project type._
_And is the only exception to the default option_
