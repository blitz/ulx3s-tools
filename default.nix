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

  nextpnr = pkgs.nextpnr.overrideAttrs (old: {
    version = "20201001-git";
    src = sources.nextpnr;
  });
}
