# winston's icat

Use `icat` to display images, SVG files, and videos, that are either stored locally, specified via URL, or `stdin`!

Tested on [WezTerm](https://wezfurlong.org/wezterm/), [kitty](https://sw.kovidgoyal.net/kitty/), [iTerm2](https://iterm2.com) and [foot](https://codeberg.org/dnkl/foot).

## Requirements

This needs the following packages available to work completely:

- A supported terminal
- `bash`
- `coreutils`
- `curl`
- `ffmpeg`
- `file`
- `gnugrep`
- `imagemagick`
- `perl`

If you're on Nix, you can use `nix run github:nekowinston/icat`!
