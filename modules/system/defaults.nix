{ ... }:

{
  system.defaults.NSGlobalDomain = {
    # Appearance
    AppleInterfaceStyle = "Dark";
    AppleInterfaceStyleSwitchesAutomatically = false;
    AppleAccentColor = 0; # Red accent color
    AppleHighlightColor = "1.000000 0.733333 0.721569 Red";
    AppleReduceDesktopTinting = false;
    
    # Keyboard & Input
    AppleKeyboardUIMode = 3; # Full keyboard access
    ApplePressAndHoldEnabled = true; # Enable press-and-hold for accents
    InitialKeyRepeat = 15;
    KeyRepeat = 2;
    
    # Text & Spelling
    NSAutomaticCapitalizationEnabled = true; # You have this ON
    NSAutomaticPeriodSubstitutionEnabled = true; # You have this ON
    NSAutomaticDashSubstitutionEnabled = false;
    NSAutomaticQuoteSubstitutionEnabled = true;
    NSAutomaticSpellingCorrectionEnabled = false;
    
    # Mouse/Trackpad
    "com.apple.trackpad.forceClick" = true;
    "com.apple.trackpad.scaling" = 1.0;
    "com.apple.springing.enabled" = true; # Spring loading
    "com.apple.springing.delay" = 0.5;
    "com.apple.sound.beep.flash" = false; # No screen flash on beep
    
    # UI/UX
    AppleShowScrollBars = "Automatic";
    NSAutomaticWindowAnimationsEnabled = true; # You have animations ON
    NSWindowResizeTime = 0.2;
    AppleMiniaturizeOnDoubleClick = false; # Don't minimize on double-click
    
    # Files
    AppleShowAllExtensions = true;
    
    # Menu bar
    _HIHideMenuBar = false;
    
    # Time format
    AppleICUForce24HourTime = true; # 24-hour time format
    
    # Web services
    NSPreferredWebServices = {
      NSWebServicesProviderWebSearch = {
        NSDefaultDisplayName = "DuckDuckGo";
        NSProviderIdentifier = "com.duckduckgo";
      };
    };
  };

  system.defaults.trackpad = {
    Clicking = true;
    TrackpadRightClick = true;
    TrackpadThreeFingerDrag = false;
  };

  system.defaults.screencapture = {
    location = "~/Pictures/Screenshots";
    type = "png";
    disable-shadow = false;
  };

  system.defaults.loginwindow = {
    GuestEnabled = false;
    DisableConsoleAccess = true;
  };

  system.defaults.ActivityMonitor = {
    IconType = 5;
    ShowCategory = 100;
  };

  system.defaults.CustomUserPreferences = {
    "com.apple.menuextra.battery" = {
      ShowPercent = "YES";
    };
    
    "NSGlobalDomain" = {
      WebAutomaticSpellingCorrectionEnabled = false;
      
      # Text replacements (your shortcuts)
      # Note: These may need to be set up manually as nix-darwin doesn't fully support them
      # But we can document them here for reference
      # NSUserDictionaryReplacementItems is complex and may not work declaratively
    };
  };
}
