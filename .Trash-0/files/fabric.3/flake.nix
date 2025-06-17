{
  description = "Fabric Nix Examples and templates";

  outputs = { ... }: {
    templates = {
      bar = {
        path = ./bar-example;
        description = "Example of a Fabric bar using Nix";
        welcomeText = ''
        '';
      };
    };
  };
}
