{
  enable = true;
  taps = [];
  brews = [
    "archey4"
    "cabextract"
    "cdrtools"
    "iproute2mac"
    "jp2a"
    "libgit2" # Only keep if you directly use `lg2` or depend on specific version behavior
    "mas"     # Required by nix-homebrew
    "ncdu"
    "node"
    "rename-cli"
    "shellcheck"
    "wimlib"
  ];
  casks = [
    # "arc" my preferred browser installed traditionally
    "dockfix"
    "aerospace"
    "bettertouchtool"
    "firefox@developer-edition"
    "flameshot"
    "font-fira-code-nerd-font"
    "font-jetbrains-mono"
    "hiddenbar"
    "iina"
    "itsycal"
#    "jellyfin-media-player"
    "keyclu"
    "losslesscut"
    "microsoft-auto-update"
    "microsoft-office"
#    "openvpn-connect"
    "pocket-casts"
    "raspberry-pi-imager"
#    "spacedrive"
#    "steam"
    "teamviewer"
    "transmission"
    "utm"
    "vscodium"
    "zed"
    "keepingyouawake"
    "bitwarden"
  ];
  masApps = {
    "Streaks" = 963034692;
    "AllMyBatteries" = 1621263412;
    "Things" = 904280696;
#    "Charmstone" = 1563735522;
    "Pixelmator Pro" = 1289583905;
    "Hand Mirror" = 1502839586;
#    "Under My Roof" = 1524335878;
    "Toolbox for Pages" = 571654652;
    "Dato" = 1470584107;
    "Just Press Record" = 1033342465;
    "Playgrounds" = 1496833156;
    "rcmd" = 1596283165;
#    "Bitwarden" = 1352778147;
    "Pages" = 409201541;
    "Shell Fish" = 1336634154;
    "iMovie" = 408981434;
#    "Chronicle" = 572561420;
#    "Photomator" = 1444636541;
    "Tailscale" = 1475387142;
    "Actions" = 1586435171;
#    "Planny" = 1515324201;
    "Structured" = 1499198946;
    "Lockera Widgets" = 6466819847;
    "Shortery" = 1594183810;
    "LocalSend" = 1661733229;
    "ReadKit - Reading Hub" = 1615798039;
  };
  onActivation.cleanup = "zap";
  onActivation.autoUpdate = true;
  onActivation.upgrade = true;
}
