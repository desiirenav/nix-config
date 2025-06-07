# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware.nix
      ./../modules/nixos/hardware/disko-config.nix
      ./../modules/nixos/hardware/nvidia.nix
      ./../modules/nixos/packages/nvf.nix
      ./../modules/nixos/packages/gaming.nix
      ./../modules/nixos/packages/fonts.nix
      ./../modules/nixos/packages/flatpak.nix
      ./../modules/nixos/stylix/stylix.nix
      ./../overlays/liga.nix
    ];

  nixpkgs.overlays = [inputs.niri.overlays.niri];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # NTFS
  boot.supportedFilesystems = ["ntfs"];

  networking.hostName = "nixos";

  # Networking
  networking.networkmanager.enable = true;

  # Time zone.
  time.timeZone = "America/Toronto";

  # Internationalisation
  i18n.defaultLocale = "en_CA.UTF-8";

  # Services
  services = {
    displayManager.gdm.enable = true;
    xserver = {
      xkb = {
        layout = "us";
        variant = "";
      };
    };
  };

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  # User
  users.users.narayan = {
    isNormalUser = true;
    description = "Narayan";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.nushell;
    openssh.authorizedKeys.keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILGESSCczFQgd3hW82MUOni8XD31ZpNz8sct+u4npd7B narayan@nixos"];
    packages = with pkgs; [];
  }; 
 
  # Home-manager
  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    users = {
      "narayan" = import ./../home-manager/home.nix;
    };
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Flakes
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Niri
  programs.niri = {
    enable = true;
    package = pkgs.niri-unstable;
  };
  # Bluetooth
  hardware.bluetooth.enable = true;

  # Packages
  environment.systemPackages = with pkgs; [
    yazi
    typst
    zathura
    ani-cli
    unzip
    unrar
    pfetch
    nitch
    fastfetch
    librewolf
    adwaita-icon-theme
  ];

  # OpenSSH daemon.
  services.openssh.enable = true;

  # Autoclean
  nix = {
    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  system.stateVersion = "24.11"; # Did you read the comment?

}

