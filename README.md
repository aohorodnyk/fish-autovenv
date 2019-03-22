#### autovenv
[Oh My Fish][omf] plugin to automatically activate/deactivate Python virtual enviroments upon entering/leaving a directory.

[![MIT License][license-badge]](/LICENSE)
</br>

## Install
Installation with [Oh My Fish][omf]:

    omf install autovenv

## Usage
Upon entering a directory that contains a Python venv the plugin will automatically activate it for you.
Likewise, when leaving a venv directory the plugin will automatically deactivate it for you. The plugin
also handles cases where you move directly from one venv directory to another.

The only setting is a variable called `autovenv_announce` that controls whether or not a message is printed
when entering/leaving/changing venvs.

    set -U autovenv_announce 1|0

## License
[MIT][mit] © [Timothy Brown][author]

[author]: https://github.com/timothybrown
[license-badge]: https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[mit]: http://opensource.org/licenses/MIT
[omf]: https://github.com/oh-my-fish/oh-my-fish