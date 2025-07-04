{
  description = "nix config with flake, hm and impermanence";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
home-manager.inputs.nixpkgs.follows = "nixpkgs";
    niri.url = "github:sodiboo/niri-flake";
    niri-unstable.url = "github:YaLTeR/niri";
    impermanence.url = "github:nix-community/impermanence";
    nixcord.url = "github:kaylorben/nixcord";
    nvim-config.url = "github:desiirenav/nvim-config";
    apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
    stylix.url = "github:danth/stylix";
    textfox.url = "github:adriankarlen/textfox";
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
