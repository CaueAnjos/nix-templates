{
  description = "A collection of templates";

  outputs = {self, ...}: {
    templates = {
      default = self.templates.minimal;
      minimal = {
        path = ./templates/minimal;
        description = "Minimal template";
      };
    };
  };
}
