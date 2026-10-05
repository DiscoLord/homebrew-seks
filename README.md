# homebrew-seks

The [Homebrew](https://brew.sh) tap for
[seks](https://github.com/DiscoLord/seks), which shows the key bindings of
an app in the terminal.

```sh
brew install discolord/seks/seks
```

The formula installs the binary of the latest release and the shell
completions for zsh, bash and fish. It works on macOS and on Linux.

## A new release

1. Change `version` and the four `url` lines in `Formula/seks.rb`.
2. Copy the four `sha256` values from `checksums.txt` of the release.
