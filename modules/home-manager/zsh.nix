{ config, ... }:

{
  # Zsh configuration
  programs.zsh = {
    enable = true;
    dotDir = "${config.xdg.configHome}/zsh";
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    
    shellAliases = {
      # Nix shortcuts
      nrs = "darwin-rebuild switch --flake ~/.config/nix-darwin";
      nrb = "darwin-rebuild build --flake ~/.config/nix-darwin";
      
      # Common shortcuts
      ll = "ls -lah";
      ".." = "cd ..";
      "..." = "cd ../..";
      
      # Git shortcuts
      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";
      gl = "git log --oneline --graph";
    };
    
    initContent = ''
      # Custom zsh configurations
      setopt AUTO_CD
      setopt HIST_IGNORE_ALL_DUPS
      setopt SHARE_HISTORY
    '';
  };
}
