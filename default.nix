{pkgs ? import <nixpkgs> {}}:
with pkgs;
  writeShellApplication {
    name = "icat";
    runtimeInputs = [
      coreutils
      curl
      ffmpeg
      file # to identify mime types
      gnugrep
      imagemagick
      perl # for shasum
    ];
    text = builtins.readFile ./icat.sh;
  }
