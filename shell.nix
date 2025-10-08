{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "deno-shell";

  buildInputs = [
    pkgs.deno
  ];

  shellHook = ''
    echo "🦕 Deno development environment ready!"
    deno --version
  '';
}
