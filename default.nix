let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };
in {
  ujprog = pkgs.callPackage ./tools/ujprog.nix {
    ujprogSource = "${sources.f32c-tools}/ujprog";
  };
}
