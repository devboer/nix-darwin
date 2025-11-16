
{ ... }:

{
  system.defaults.dock = {
    autohide = true;
    autohide-delay = 0.0;
    autohide-time-modifier = 0.1;
    show-recents = false;
    tilesize = 56;
    largesize = 90;
    magnification = false;
    orientation = "right";
    showhidden = true; # Show indicators for hidden apps
    show-process-indicators = true;
    launchanim = false; # Disable launch animation
    mineffect = "scale"; # Minimize effect
    minimize-to-application = false;
    mru-spaces = false; # Don't auto-rearrange spaces
    expose-group-apps = true;
    
    # Hot corners
    wvous-bl-corner = 10; # Bottom-left: Put display to sleep
    wvous-bl-modifier = 0;
    wvous-br-corner = 14; # Bottom-right: Quick Note
    wvous-br-modifier = 0;
  };
}
