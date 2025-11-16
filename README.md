# nix-darwin

### _File Structure_:

```bash
.
├── flake.lock
├── flake.nix
├── flake.nix.bak
├── modules
│   ├── apps
│   │   ├── homebrew.nix
│   │   └── packages.nix
│   ├── home-manager
│   │   ├── home.nix # importer
│   │   ├── starship.nix
│   │   └── zsh.nix
│   └── system
│       ├── defaults.nix
│       ├── dock.nix
│       ├── finder.nix
│       └── system.nix # importer
└── README.md
```
