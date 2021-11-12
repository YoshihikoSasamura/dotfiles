# dotfiles
## Usage
### Homebrew
https://brew.sh/index_ja
### Brewfile
```console
$ brew bundle
```
### Fisher
https://github.com/jorgebucaran/fisher

インストール時、`fisher_plugins` が存在すると、初期値に上書きされるので、作業の順序に注意。

### RCM
dotfiles を `~/.dotfiles` に配置。

```console
$ env RCRC=.dotfiles/rcrc rcup
```

### Fisher Plugins

```console
$ fisher update
```
