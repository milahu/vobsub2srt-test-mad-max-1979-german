{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let
  # https://github.com/milahu/nur-packages/blob/190e62500f2120b92da54b098cd7b334cf23bcaa/pkgs/by-name/vo/vobsub2srt/package.nix
  vobsub2srt = callPackage ./vobsub2srt.nix { };
in

mkShell {
  buildInputs = [
    vobsub2srt
  ];
}
