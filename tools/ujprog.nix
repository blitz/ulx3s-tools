{ ujprogSource, stdenv, pkgconfig, libftdi }:
stdenv.mkDerivation {
  pname = "ujprog";
  version = "20191118-git";

  src = ujprogSource;

  buildInputs = [ pkgconfig libftdi ];

  dontConfigure = true;

  # There is no point in linking static libraries in Nix derivations.
  postPatchPhase = ''
    sed -i 's/-static//' Makefile.linux
  '';

  buildPhase = ''
    make -f Makefile.linux CFLAGS="-O2" FTLIB="$(pkg-config --cflags --libs libftdi)" USBLIB=""
  '';

  installPhase = ''
    mkdir -p $out/bin
    install -m 0755 ujprog $out/bin
  '';
}
