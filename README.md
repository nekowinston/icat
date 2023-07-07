# winston's icat

Use `icat` to display images, SVG files, and videos, that are either stored locally, specified via URL, or `stdin`!

Tested on both [WezTerm](https://wezfurlong.org/wezterm/) and [kitty](https://sw.kovidgoyal.net/kitty/), possibly works on [iTerm2](https://iterm2.com) as well.

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
