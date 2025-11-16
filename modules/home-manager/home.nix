{ ... }:

{
  # Import modular configs
  imports = [
    ./zsh.nix
    ./starship.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should manage.
  home.username = "devboer";
  home.homeDirectory = "/Users/devboer";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
