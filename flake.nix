{
  description = "devBoer's flake, curated from searches on the webs";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = {
          url = "github:nix-community/home-manager";
          inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-darwin = {
         url = "github:LnL7/nix-darwin";
         inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-homebrew = {
          url = "github:zhaofengli/nix-homebrew";
    };
    # Homebrew taps
    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
    homebrew-services = {
      url = "github:homebrew/homebrew-services";
      flake = false;
    };
    homebrew-bundle = {
      url = "github:homebrew/homebrew-bundle";
      flake = false;
    };
    cone-tap = {
      url = "github:conductorone/homebrew-cone";
      flake = false;
    };
    nikitabobko-tap = {
      # Contains aerospace
      url = "github:nikitabobko/homebrew-tap";
      flake = false;
    };
  };

  outputs = { self, nix-darwin, nixpkgs, home-manager, nix-homebrew, ... }@inputs:
  let
    configuration = { pkgs, ... }: {
      homebrew = import ./modules/apps/homebrew.nix;
      environment.systemPackages = import ./modules/apps/packages.nix { inherit pkgs; };
      
      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";
      
      # Allow Unfree Software
      nixpkgs.config.allowUnfree = true;
      
      # Exclude broken packages
      nixpkgs.config.packageOverrides = pkgs: {
        fish = pkgs.fish.overrideAttrs (oldAttrs: {
          doCheck = false;  # Skip failing tests
        });
      };
      
      # Enable rosetta binaries
      nix.extraOptions = ''
        extra-platforms = x86_64-darwin aarch64-darwin
      '';
      
      # Disable fish shell
      programs.fish.enable = false;
      
      # Enable zsh
      programs.zsh.enable = true;
      
      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;
      
      # Used for backwards compatibility, please read the changelog before changing.
      system.stateVersion = 5;
      ids.gids.nixbld = 30000;
      
      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
      
      # Enable Touch ID support
      security.pam.services.sudo_local.touchIdAuth = true;
      
      # Declaring primary user
      system.primaryUser = "devboer";
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#macair
    darwinConfigurations."macair" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
        home-manager.darwinModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "backup";
          home-manager.users.devboer = ./modules/home-manager/home.nix;
          users.users.devboer.home = "/Users/devboer";
        }
        nix-homebrew.darwinModules.nix-homebrew {
          nix-homebrew = {
            enable = true;
            enableRosetta = true;
            user = "devboer";
            autoMigrate = true;
            taps = {
              "conductorone/homebrew-cone" = inputs.cone-tap;
              "homebrew/homebrew-core" = inputs.homebrew-core;
              "homebrew/homebrew-cask" = inputs.homebrew-cask;
              "homebrew/homebrew-bundle" = inputs.homebrew-bundle;
              "nikitabobko/homebrew-tap" = inputs.nikitabobko-tap;
            };
            mutableTaps = true;
          };
        }
      ];
    };
  };
}
