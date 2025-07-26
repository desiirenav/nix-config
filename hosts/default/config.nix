{ inputs, pkgs, lib, config, system, ... }: {
  imports = [
    ./../../modules/nixos/hardware-configuration.nix
    ./../../modules/nixos/persist.nix
    ./../../modules/nixos/nvidia.nix
    ./../../modules/nixos/gaming.nix
    ./../../modules/nixos/fonts.nix
    ./../../modules/nixos/stylix.nix
    ./../../overlays/liga.nix
  ];

  nixpkgs.overlays = [
    inputs.niri.overlays.niri
    inputs.nvim-config.overlays.default
  ];
  
  # Host name
  networking.hostName = "nixos";
  
  # Network
  networking.networkmanager.enable = true;

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # NTFS
  boot.supportedFilesystems = ["ntfs"];

  # Time
  time.timeZone = "Canada/Eastern";

  # Bluetooth
  hardware.bluetooth.enable = true;

  services = {
    displayManager.gdm.enable = true;
  };

  # Sound via pipewire
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  # Users
  users.mutableUsers = false;
  users.users = {
    root.hashedPasswordFile = "/nix/persist/passwords/root";
    narayan = {
      isNormalUser = true;
      description = "Narayan";
      extraGroups = [ "wheel" "networkmanager" "docker" ];
      hashedPasswordFile = "/nix/persist/passwords/narayan";
      openssh.authorizedKeys.keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINyI6UtQXtVNvUqv6bRsHAOhwynB9Eyjb4BJmdekshXJ narayan@nixos"];
    };
  };

  # Home-manager
  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    users = {
      "narayan" = import ./home.nix;
    };
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Flakes
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # GVFS
  services.gvfs.enable = true;

  # Niri
  programs.niri = {
    enable = true;
    package = pkgs.niri-unstable;
  };


  # Packages
  environment.systemPackages = with pkgs; [
    yazi
    typst
    zathura
    ani-cli
    unzip
    unrar
    nitch
    flavours
    fastfetch
    nvim-pkg
    vlc
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

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "25.11";
}
