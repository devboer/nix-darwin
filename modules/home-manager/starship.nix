{ ... }:

{
  # Starship prompt configuration
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    
    settings = {
      # Add a newline before each prompt
      add_newline = true;
      
      # Customize the format
      format = "$all";
      
      # Character indicator
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
      };
      
      # Directory display
      directory = {
        truncation_length = 3;
        truncate_to_repo = true;
        style = "bold cyan";
      };
      
      # Git branch
      git_branch = {
        symbol = " ";
        style = "bold purple";
      };
      
      # Git status
      git_status = {
        style = "bold yellow";
        conflicted = "🏳";
        ahead = "⇡\${count}";
        behind = "⇣\${count}";
        diverged = "⇕⇡\${ahead_count}⇣\${behind_count}";
        untracked = "🤷";
        stashed = "📦";
        modified = "📝";
        staged = "[++($count)](green)";
        renamed = "👅";
        deleted = "🗑";
      };
      
      # Programming languages
      python = {
        symbol = " ";
        style = "yellow bold";
      };
      
      nodejs = {
        symbol = " ";
        style = "green bold";
      };
      
      rust = {
        symbol = " ";
        style = "red bold";
      };
      
      # Nix shell indicator
      nix_shell = {
        symbol = " ";
        style = "blue bold";
        format = "via [$symbol$state]($style) ";
      };
      
      # Command duration
      cmd_duration = {
        min_time = 500;
        format = "took [$duration](bold yellow) ";
      };
      
      # Time
      time = {
        disabled = false;
        format = "🕙[$time]($style) ";
        style = "bright-white";
      };
    };
  };
}
