{ pkgs, mkShell, swift, swiftpm, swiftpm2nix }:

mkShell.override { inherit (swift) stdenv; } {
  inputsFrom = [ pkgs.flip ];
  nativeBuildInputs = [ swiftpm swiftpm2nix ];
}
