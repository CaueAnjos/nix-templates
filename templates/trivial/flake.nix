{
  description = "Description for the project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/25.11";
    systems.url = "github:nix-systems/default";
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
        ./packages
        ./scripts
      ];
      systems = import inputs.systems;
      perSystem = {pkgs, ...}: {
        devShells.default = pkgs.mkShellNoCC {
          name = "dev";
          packages = with pkgs; [
            cowsay
          ];
        };
      };
    };
}
