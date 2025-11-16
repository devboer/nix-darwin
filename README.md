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

### Goals:
- [ ] Fully implement `defaults read` options into System.nix
- [ ] Clean up flake.nix file after implementation
- [ ] Import old shell configs and more into home-manager
- [ ] Keep refactoring packages/homebrew options [[ **mas-cli doesn't work with MacOS 26** ]]
