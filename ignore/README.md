# Ignore

These are the ignore files we use in our projects.

## How to use

We use setup scripts for our projects.
and so for that reason we simply call this script from github in our project script.

```bash
curl -LsS https://raw.githubusercontent.com/marissen/dotfiles/master/ignore/get.sh | bash -s magento2
```

You can use it locally from your own directory, via;

```bash
bash <PATH>/dotfiles/ignore/get.sh magento2
```

Project options are required!

| Project            | Flag                                |
| ------------------ | ----------------------------------- |
| Magento            | magento, m1                         |
| Magento2           | magento2, m2                        |
| Wordpress          | wordpress, wp                       |
| Wordpress Themosis | wordpress-themosis, wpthemosis, wpt |
| Laravel            | laravel, lara                       |
| Akeneo             | akeneo                              |

## Files

Each ignore is project based.
And has a prefix of this in the name of the ignore file.

In case the ignore has no prefix.
It will uses the default ignore instead.

_git is our entry and requires a project type._
_And is the only exception to the default option_
