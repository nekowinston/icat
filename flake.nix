{
  outputs = {nixpkgs, ...} @ inputs: let
    systems = [
      "aarch64-darwin"
      "aarch64-linux"
      "armv6l-linux"
      "armv7l-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
    forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);
  in {
    packages = forAllSystems (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in rec {
      icat = import ./. {inherit pkgs;};
      default = icat;
    });
    apps = forAllSystems (system: rec {
      icat = {
        type = "app";
        program = "${inputs.self.packages.${system}.icat}/bin/icat";
      };
      default = icat;
    });
  };
}
