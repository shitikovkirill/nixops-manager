builtins.fetchTarball {
  name = "nixos-unstable-20.09-beta";
  url = https://github.com/NixOS/nixpkgs/archive/20.09-beta.tar.gz;
  sha256 = "sha256:1iysc4xyk88ngkfb403xfq5bs3zy29zfs83pn99kchxd45nbpb5q";
}

# How to push a cache to arm.nixos.org
# ./manage c export | jq '.[].configsPath' -r | ( read conf ; nix-store -qR $conf | while read line; do echo `nix-store -q --size $line` $line ; done | sort -nr | head -n10 | cut -d' ' -f2 | grep -E 'linux|icu4c|glibc|systemd|glib|coreutils|initrd|util-linux' | cachix push arm )
