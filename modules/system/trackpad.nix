{ ... }:

{
  system.defaults.trackpad = {
    # Basic trackpad settings
    Clicking = true;
    TrackpadRightClick = true;
    TrackpadThreeFingerDrag = false;
  };

  # Advanced trackpad settings via CustomUserPreferences
  system.defaults.CustomUserPreferences = {
    "com.apple.AppleMultitouchTrackpad" = {
      # Click settings
      Clicking = 1;
      FirstClickThreshold = 1;
      SecondClickThreshold = 1;
      ActuateDetents = 1;
      ActuationStrength = 1;
      
      # Drag settings
      Dragging = 0;
      DragLock = 0;
      TrackpadThreeFingerDrag = 0;
      
      # Scrolling
      TrackpadScroll = 1;
      TrackpadHorizScroll = 1;
      TrackpadMomentumScroll = 1;
      
      # Gestures
      TrackpadPinch = 1;
      TrackpadRotate = 1;
      TrackpadRightClick = 1;
      TrackpadCornerSecondaryClick = 0;
      
      # Multi-finger gestures
      TrackpadTwoFingerDoubleTapGesture = 1; # Smart zoom
      TrackpadTwoFingerFromRightEdgeSwipeGesture = 3; # Notification Center
      TrackpadThreeFingerTapGesture = 0; # Look up disabled
      TrackpadThreeFingerHorizSwipeGesture = 2; # Swipe between pages
      TrackpadThreeFingerVertSwipeGesture = 2; # Mission Control/App Exposé
      TrackpadFourFingerHorizSwipeGesture = 2; # Swipe between spaces
      TrackpadFourFingerVertSwipeGesture = 2; # Mission Control
      TrackpadFourFingerPinchGesture = 2; # Launchpad
      TrackpadFiveFingerPinchGesture = 2; # Show desktop
      
      # Other settings
      TrackpadHandResting = 1;
      ForceSuppressed = 0;
      USBMouseStopsTrackpad = 0; # Trackpad works even with mouse connected
      UserPreferences = 1;
    };
    
    "com.apple.driver.AppleBluetoothMultitouch.trackpad" = {
      # Same settings for Bluetooth trackpad
      Clicking = 1;
      TrackpadRightClick = 1;
      TrackpadThreeFingerDrag = 0;
    };
  };
}
