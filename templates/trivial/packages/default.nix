{
  perSystem = {
    self',
    pkgs,
    ...
  }: {
    packages.default = pkgs.callPackage ./example.nix {};
    packages.debug = self'.packages.default.override {
      format = "tux";
    };
  };
}
