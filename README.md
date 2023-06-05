#### AutoVenv
[Fisher][fisher] plugin to automatically activate/deactivate Python virtual enviroments upon entering/leaving a directory.

[![MIT License][license-badge]](/LICENSE)
</br>

## Why forked?
This project was forked from [autovenv by timothybrown](https://github.com/timothybrown/fish-autovenv), which has not been updated for more than three years.

The project was forked because I wanted to add a few features and improve the plugin:
* The plugin did not work with the new version of fish, and I wanted to keep it as simple as possible.
* The plugin looked for virtual environments in the current directory, but not in the specified sub-directory. For example I store virtual env in a sub-directory called `.venv`.
* Apply virtual environment when run a terminal in a directory with a custom virtual environment.

## Install
Installation with [Fisher][fisher]:

    fisher install aohorodnyk/fish-autovenv

## About
Do you like the way Pyenv automatically switches between enviroments when you change directories and wish
you could do the same thing with standard Python 3 venvs? Well, now you can! No complicated scripts,
binaries or overhead needed; AutoVenv is a single file, pure `fish` solution.

## Usage
Upon entering a directory that contains a Python venv (or any directory *above* it) AutoVenv will automatically
activate it for you. Likewise, when moving *below* the venv's parent directory AutoVenv will deactivate it!
AutoVenv can also handle cases where you move directly from one venv directory to another.

## Settings
    set -U autovenv_enable yes|no
Enables/disables autovenv functionality.

    set -U autovenv_announce yes|no
Controls whether or not a message is printed when entering/leaving/changing venvs.

    set -U autovenv_dir .venv
Set a directory or path to a directory that contains Python virtual environments. If empty, the current directory is used.


## License
[MIT][mit] © [Timothy Brown][author]

[MIT][mit] © [Anton Ohorodnyk][author2]

[author]: https://github.com/timothybrown
[author2]: https://github.com/aohorodnyk
[license-badge]: https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[mit]: http://opensource.org/licenses/MIT
[fisher]: https://github.com/jorgebucaran/fisher
