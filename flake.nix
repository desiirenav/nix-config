{
  description = "An example of a configured misterio77/nix-starter-config for impermanence";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    niri.url = "github:sodiboo/niri-flake";
    niri-unstable.url = "github:YaLTeR/niri";
    impermanence.url = "github:nix-community/impermanence";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    nixcord.url = "github:kaylorben/nixcord";
                #    ghostty.url = "github:ghostty-org/ghostty";
    nvf.url = "github:notashelf/nvf";
    apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
    stylix.url = "github:danth/stylix";
    sf-mono-liga-src = {
      url = "github:shaunsingh/SFMono-Nerd-Font-Ligaturized";
      flake = false;
    };
  };

  outputs = inputs@{ self, nixpkgs, ... }: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          inputs.home-manager.nixosModules.home-manager
          inputs.impermanence.nixosModules.impermanence
          ./hosts/nixos/config.nix
        ];
      };
    };
  };
}
