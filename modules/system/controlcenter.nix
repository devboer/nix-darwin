{ ... }:

{
  # Control Center menu bar items
  system.defaults.CustomUserPreferences = {
    "com.apple.controlcenter" = {
      # Menu bar visibility settings
      # 0 = hidden, 1 = visible
      
      # What's visible in menu bar
      "NSStatusItem Visible Battery" = false;          # Battery hidden
      "NSStatusItem Visible WiFi" = false;             # WiFi hidden
      "NSStatusItem Visible Sound" = false;            # Sound hidden
      "NSStatusItem Visible FocusModes" = false;       # Focus hidden
      "NSStatusItem Visible NowPlaying" = false;       # Now Playing hidden
      "NSStatusItem Visible ScreenMirroring" = false;  # Screen Mirroring hidden
      "NSStatusItem Visible UserSwitcher" = false;     # User Switcher hidden
      
      # What you DO have visible
      "NSStatusItem Visible BentoBox" = true;          # Control Center icon
      "NSStatusItem Visible Shortcuts" = true;         # Shortcuts visible
      
      # Control Center items (when you click the icon)
      "NSStatusItem VisibleCC Clock" = true;
      "NSStatusItem VisibleCC BentoBox-0" = true;
      "NSStatusItem VisibleCC Timer" = false;
    };
  };
}
