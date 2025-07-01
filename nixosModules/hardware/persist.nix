# https://github.com/nix-community/impermanence#module-usage
{

  environment.persistence."/nix/persist" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/etc/NetworkManager/system-connections"
      "/var/lib/flatpak"
    ];
    files = [
      "/etc/machine-id"
    ];
    users.narayan = {
      directories = [
        "Downloads"
        "Music"
        "Pictures"
        "Documents"
        "Videos"
        "Games"
        ".ssh"
	".librewolf"
        ".cache/flatpak"
        ".local/share/flatpak"
        ".local/share/Steam"
        ".config/discord"
        ".config/Vencord"
	".config/nushell"
	".config/PCSX2"
        ".var/app"
      ];
      files = [
        ".bash_history"
        ".config/systemsettingsrc"
      ];
    };
  };
}
