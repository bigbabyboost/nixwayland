{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./power-management.nix

    ./programs/dconf.nix
    ./programs/gnupg.nix
    ./programs/thunar.nix
    ./services/blueman.nix
    ./services/dbus.nix
    ./services/gnome-keyring.nix
    ./services/greetd.nix
    ./services/gvfs.nix
    ./services/pipewire.nix

    ../shared/fonts
    ../shared/hardware/acpi_call
    ../shared/hardware/bluetooth
    ../shared/hardware/cpu/intel
    ../shared/hardware/gpu/intel
    ../shared/hardware/ssd
    ../shared/window-managers/hyprland
  ];

  boot.kernelPackages = pkgs.linuxPackages_cachyos-lto;

  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };
  };

  services = {
    btrfs.autoScrub.enable = false;

    fwupd.enable = true;

    hardware.bolt.enable = true;
  };

  # Intel Core i7-12700H (Alder Lake)
  boot.kernelParams = [];

  # NVIDIA GeForce RTX 3050 Mobile (Ampere)
  services.xserver.videoDrivers = ["intel"];
}
