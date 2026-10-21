{
  description = "C++, Rust & Python environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];

      forAllSystems = nixpkgs.lib.genAttrs systems;

    in
    {
      devShells = forAllSystems (
        system:
        let
          pkgs = import nixpkgs { inherit system; };

        in
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              # C++
              gcc
              clang-tools
              cmake
              gdb
              sfml

              # Python
              python3
              pyright
              ruff

              # Rust
              rustc
              cargo
              rust-analyzer
              rustfmt
              clippy

              git
            ];
          };
        }
      );
    };
}
