{ pkgs, ... }:

pkgs.stdenv.mkDerivation {
  name = "nixos-grub-theme";
  src = ./theme; 

  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out/
  '';
}
