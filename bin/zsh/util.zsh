# Utility functions meant for general-purpose interactive-CLI usage

# Print all functions along with their description
zhelp() {
  # Display all z-prefixed utility functions with descriptions
  # 
  # Usage: zhelp
  #
  # This function searches ~/.bin/zsh/ for all functions and displays them
  # grouped by file, with their descriptions.
  #
  # File format:
  # - Top of file: Add comments (starting with #) describing the file's purpose
  # - Leave a blank line after the file description
  # - Each function: Add a # comment describing it, immediately followed by the function
  
  echo "\n\033[36m━━━ Z Commands ━━━\033[0m\n"
  
  for file in ~/.bin/zsh/*.zsh; do
    local file_desc=$(sed -n '1,/^$/p' "$file" | rg "^# " | sed 's/^# //')
    local filename=$(basename "$file" .zsh)
    
    if [[ -n "$file_desc" ]]; then
      echo "\033[35m▸ $filename\033[0m"
      echo "$file_desc" | sed 's/^/  /'
      echo ""
    fi
    
    # More robust: find function names first, then look back for their comment
    rg "^(z\w+[_0-9]*)\(\)" "$file" -o -r '$1' | while read func; do
      # Get the comment line immediately before this function
      local desc=$(rg -B 1 "^${func}\(\)" "$file" | head -1 | sed 's/^# //')
      if [[ "$desc" != "${func}()" ]]; then
        echo "  \033[32m$func\033[0m - $desc"
      fi
    done
    
    echo ""
  done
}

# Search ZSH history with ripgrep
zhg() {
  if [[ -z "$1" ]]; then
    echo "Usage: histgrep <pattern>"
    return 1
  fi
  
  rg "$@" ~/.local/zsh_history
}

