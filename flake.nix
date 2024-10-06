{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:

    with flake-utils.lib;

    let
      overlays = { default = (final: _: { flip = final.callPackage ./default.nix { }; }); };
    in

    { inherit overlays; }

    //

    eachDefaultSystem (system:

      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ overlays.default ];
        };
      in

      {
        formatter = pkgs.nixpkgs-fmt;
        packages.default = pkgs.flip;
        devShells.default = pkgs.callPackage ./shell.nix { };
      });
}
