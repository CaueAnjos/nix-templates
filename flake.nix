{
  description = "A collection of templates";

  outputs = {self, ...}: {
    templates = {
      default = self.templates.trivial;
      trivial = {
        path = ./templates/trivial;
        description = "Trivial template";
      };
      minimal = {
        path = ./templates/minimal;
        description = "Minimal template";
      };
    };
  };
}
