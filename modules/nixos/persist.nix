{
  environment.persistence."/nix/persist" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/etc/NetworkManager/system-connections"
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
        "Projects"
        "Videos"
        "Games"
        ".ssh"
        ".cache/mozilla"
        ".mozilla"
	      ".librewolf"
        ".local/share/Steam"
        ".config/discord"
        ".config/Vencord"
      ];
      files = [
        ".bash_history"
        ".config/systemsettingsrc"
      ];
    };
  };
}
