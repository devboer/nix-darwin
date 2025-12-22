{ ... }:

{
  # Starship prompt configuration - Prezto style
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    
    settings = {
      # No newline before prompt
      add_newline = false;
      
      # Minimal left prompt
      format = "$python$directory$character";
      
      # Move the rest to the right
      right_format = "$status$all";
      
      # Character (prompt symbol)
      character = {
        success_symbol = "[❯](red)[❯](yellow)[❯](green)";
        error_symbol = "[❯](red)[❯](yellow)[❯](green)";
        vicmd_symbol = "[❮](green)[❮](yellow)[❮](red)";
      };
      
      # Directory
      directory = {
        style = "blue";
        truncation_length = 1;
        truncation_symbol = "";
        fish_style_pwd_dir_length = 1;
      };
      
      # Python
      python = {
        format = "($virtualenv) ";
      };
      
      # Git branch
      git_branch = {
        format = "[$branch]($style) ";
        style = "bold green";
      };
      
      # Git status
      git_status = {
        format = "$all_status$ahead_behind ";
        ahead = "[⬆](bold purple) ";
        behind = "[⬇](bold purple) ";
        staged = "[✚](green) ";
        deleted = "[✖](red) ";
        renamed = "[➜](purple) ";
        stashed = "[✭](cyan) ";
        untracked = "[◼](white) ";
        modified = "[✱](blue) ";
        conflicted = "[═](yellow) ";
        diverged = "⇕ ";
        up_to_date = "";
      };
      
      # Command duration
      cmd_duration = {
        format = "[$duration]($style) ";
      };
      
      # Status
      status = {
        disabled = false;
        symbol = "✘ ";
      };
      
      # Line break
      line_break = {
        disabled = true;
      };
    };
  };
}