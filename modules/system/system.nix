{ ... }:

{
  # Import all system setting modules
  imports = [
    ./dock.nix
    ./finder.nix
    ./defaults.nix
    ./keyboard.nix
  ];

  # Additional system configuration
  system.activationScripts.postUserActivation.text = ''
    # Following line should allow us to avoid a logout/login cycle
    /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
  '';
}
