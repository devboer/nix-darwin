{ ... }:

{
  system.defaults.finder = {
    # File extensions and visibility
    AppleShowAllExtensions = true;
    AppleShowAllFiles = false; # You have this off
    FXEnableExtensionChangeWarning = false;
    
    # Window settings
    ShowPathbar = true;
    ShowStatusBar = true;
    _FXShowPosixPathInTitle = true;
    
    # View settings
    FXPreferredViewStyle = "icnv"; # Icon view (you prefer icon view)
    FXDefaultSearchScope = "SCcf"; # Search current folder by default
    
    # Desktop
    ShowExternalHardDrivesOnDesktop = true;
    ShowHardDrivesOnDesktop = false;
    ShowMountedServersOnDesktop = true;
    ShowRemovableMediaOnDesktop = true;
    
    # New window target
    NewWindowTarget = "PfHm"; # Home directory
    NewWindowTargetPath = "file:///Users/devboer/";
    
    # Quit menu item
    QuitMenuItem = false;
  };
  
  # Custom Finder preferences not in system.defaults
  system.defaults.CustomUserPreferences = {
    "com.apple.finder" = {
      # Desktop icon arrangement
      DesktopViewSettings = {
        IconViewSettings = {
          arrangeBy = "dateAdded";
          iconSize = 64;
          gridSpacing = 54;
          labelOnBottom = true;
        };
      };
      
      # Standard view settings
      StandardViewSettings = {
        IconViewSettings = {
          arrangeBy = "none";
          iconSize = 64;
          gridSpacing = 54;
          labelOnBottom = true;
        };
      };
      
      # Show item info in icon view
      FK_DefaultIconViewSettings = {
        showItemInfo = true;
      };
      
      # Sidebar width
      SidebarWidth = 143;
      
      # Warning when changing file extensions
      FXEnableExtensionChangeWarning = false;
      
      # Show recent tags
      ShowRecentTags = false;
    };
  };
}
