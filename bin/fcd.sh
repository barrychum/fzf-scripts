# Function to change directory using fzf
fcd3() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

# Function to change directory using fzf with partial match support
fcd2() {
  local query="${1:-}"
  local dir
  dir=$(find ${HOME} -type d 2> /dev/null | fzf --query="$query" +m) && cd "$dir"
}

# Function to change directory using fzf with specific directory search
fcd() {
  # List of base directories to search
  local base_dirs=(
    "$HOME/Documents"
    "$HOME/.ssh"
 #   "$HOME/Downloads"
  )

  local dir
  local directories=()

  # Gather all directories under the specified base directories
  for base_dir in "${base_dirs[@]}"; do
    if [ -d "$base_dir" ]; then
      while IFS= read -r -d '' d; do
        directories+=("$d")
      done < <(find "$base_dir" -type d -print0)
    else
      echo "Directory not found: $base_dir"
    fi
  done

  # Use fzf to select a directory
  dir=$(printf '%s\n' "${directories[@]}" | fzf +m) && cd "$dir"
}


