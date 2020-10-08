{ fujprogSource, stdenv, pkgconfig, libftdi1, cmake }:
stdenv.mkDerivation {
  pname = "fujprog";
  version = "20201008-git";

  src = fujprogSource;

  buildInputs = [ cmake pkgconfig libftdi1 ];
}
