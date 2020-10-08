{ config, pkgs, ...}:
{
  services.udev.extraRules = ''
    # this is for usb-serial tty device
    SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6015", MODE="664", GROUP="dialout"
    # this is for ujprog libusb access
    ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6015", GROUP="dialout", MODE="666"
  '';
}
