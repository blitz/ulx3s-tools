let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };
in {
  fujprog =
    pkgs.callPackage ./tools/fujprog.nix { fujprogSource = sources.fujprog; };

  yosys = pkgs.yosys.overrideAttrs (old: {
    version = "20201008-git";
    src = sources.yosys;
  });
}
