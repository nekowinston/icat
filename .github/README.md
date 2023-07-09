# winston's icat

Use `icat` to display images, SVG files, and videos, that are either stored 
locally, specified via URL, or `stdin`!

Tested on [WezTerm](https://wezfurlong.org/wezterm/), 
[kitty](https://sw.kovidgoyal.net/kitty/), [iTerm2](https://iterm2.com) and 
[foot](https://codeberg.org/dnkl/foot).

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

If you're on Nix, you can use `nix run github:nekowinston/icat`, or use the 
package from my [NUR](https://github.com/nekowinston/nur)!

## Notes

`icat` creates a local cache in `$XDG_CACHE_HOME/icat` (or `~/.cache/icat`),
so if you view remote content or videos, cache files are created there. You 
might have to occasionally clean this cache if your system doesn't do that for 
you.
