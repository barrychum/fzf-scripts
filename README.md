# Interactive Directory Navigation and Cheatsheet Viewer

This repository contains two scripts for enhancing your terminal workflow on macOS:
1. `cheatsheet.sh`: An interactive cheatsheet viewer using `fzf`.
2. `fcd`: A function to change directories interactively using `fzf`.

## Prerequisites

Ensure `fzf` is installed. You can install it using Homebrew:

```sh
brew install fzf
```

## Cheatsheet Viewer

The `cheatsheet.sh` script allows you to select and open Markdown cheatsheets interactively.

### Setup

1. **Clone the repository:**

   ```sh
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

2. **Make the script executable:**

   ```sh
   chmod +x cheatsheet.sh
   ```

3. **Run the script:**

   ```sh
   ./cheatsheet.sh
   ```

## Interactive Directory Navigation

The `fcd` function allows you to change directories interactively using `fzf`.

### Setup

1. **Clone the repository:**

   ```sh
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

2. **Modify your shell configuration file** (e.g., `.bashrc`, `.zshrc`, or `.profile`) to source the `fcd` function from the cloned repository:

   ```sh
   echo 'source /path/to/your-repo-name/fcd.sh' >> ~/.profile
   ```

   Replace `/path/to/your-repo-name` with the actual path to the cloned repository.

3. **Reload your shell configuration:**

   ```sh
   source ~/.profile  # or source ~/.bashrc or source ~/.zshrc
   ```

4. **Use the function:**

   ```sh
   fcd
   ```

## Viewing and Customizing Scripts

For detailed information and customization options, please refer to the content of the scripts themselves.

## Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements or new features.

## License

This project is licensed under the MIT License.

