{
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages = rec {
          icat = pkgs.writeShellApplication {
            name = "icat";
            runtimeInputs = with pkgs; [ffmpeg imagemagick];
            text = builtins.readFile ./icat.sh;
          };
          default = icat;
        };
        apps = rec {
          icat = flake-utils.lib.mkApp {drv = self.packages.${system}.icat;};
          default = icat;
        };
      }
    );
}
