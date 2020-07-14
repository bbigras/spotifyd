let
  nixpkgs = import <nixpkgs> {};
in
  with nixpkgs;
  stdenv.mkDerivation {
    name = "moz_overlay_shell";

    buildInputs = [
      alsaLib
      cargo
      clippy
      dbus
      openssl
      pkg-config
      pulseaudio
      rustfmt
	rust-analyzer
    ];
  }
