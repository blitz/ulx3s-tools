# ulx3s-tools

Nix derivations for tools that I used for development on the
[ULX3S](https://ulx3s.github.io/) FPGA board.

There is also a module that enables users of the `dialout` group to
access the ULX3S USB devices without root:

```
% sudo nix-channel --add https://github.com/blitz/ulx3s-tools/archive/main.tar.gz ulx3s-tools

# Now add <ulx3s-tools/module> to your module list.
```
