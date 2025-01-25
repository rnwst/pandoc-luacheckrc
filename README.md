# pandoc-luacheckrc

A configuration file for [`luacheck`](https://github.com/mpeterv/luacheck) to perform linting and static analysis of [pandoc](https://pandoc.org/) [Lua filters](https://pandoc.org/lua-filters.html).


## Installation

The `.luacheckrc` configuration file can be added to your pandoc filter git repository by adding this project as a [git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules):
```console
git submodule add https://github.com/rnwst/pandoc-luacheckrc luacheck
```
You can then add a symlink to the `.luacheckrc` file in the location where you want it, e.g. in the top-level repository directory:
```console
ln -s luacheck/.luacheckrc .luacheckrc
```
The configuration file is then available to [`luacheck`](https://github.com/mpeterv/luacheck):
```console
luacheck filter.lua
```

Alternatively, instead of adding this repository as a submodule, you can place the configuration file in another directory [where `luacheck` expects to find it](https://luacheck.readthedocs.io/en/stable/config.html) (using a symlink as above).


## Known limitations

Currently, only a small subset of the available readable and writable global objects are included in `.luacheckrc` (only those that I have used in my own filters so far). If you encounter a missing global, please submit a PR.
