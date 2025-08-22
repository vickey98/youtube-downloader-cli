#!/bin/bash

# YouTube Downloader CLI - Auto Installer
# This script installs the ytdl command for easy access

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

print_colored() {
    echo -e "${1}${2}${NC}"
}

print_colored $PURPLE "🚀 YouTube Downloader CLI Installer"
echo

# Check if running on macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    print_colored $RED "❌ This installer currently supports macOS only."
    print_colored $YELLOW "💡 Please download the script manually and ensure yt-dlp and ffmpeg are installed."
    exit 1
fi

print_colored $CYAN "💻 Detected: macOS"
echo

# Check if ytdl script exists
if [[ ! -f "ytdl" ]]; then
    print_colored $RED "❌ ytdl script not found in current directory."
    print_colored $YELLOW "💡 Please run this installer from the repository directory."
    exit 1
fi

# Create local bin directory
print_colored $BLUE "📁 Creating ~/.local/bin directory..."
mkdir -p "$HOME/.local/bin"

# Copy script to local bin
print_colored $BLUE "📋 Installing ytdl command..."
cp ytdl "$HOME/.local/bin/ytdl"
chmod +x "$HOME/.local/bin/ytdl"

# Add to PATH if not already there
SHELL_CONFIG=""
if [[ "$SHELL" == *"zsh"* ]]; then
    SHELL_CONFIG="$HOME/.zshrc"
elif [[ "$SHELL" == *"bash"* ]]; then
    SHELL_CONFIG="$HOME/.bashrc"
else
    SHELL_CONFIG="$HOME/.profile"
fi

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    print_colored $BLUE "🔧 Adding ~/.local/bin to PATH in $SHELL_CONFIG..."
    echo '' >> "$SHELL_CONFIG"
    echo '# Added by YouTube Downloader CLI installer' >> "$SHELL_CONFIG"
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$SHELL_CONFIG"
    
    print_colored $YELLOW "⚠️  PATH updated. Please restart your terminal or run:"
    print_colored $WHITE "   source $SHELL_CONFIG"
else
    print_colored $GREEN "✅ PATH already includes ~/.local/bin"
fi

echo
print_colored $GREEN "🎉 Installation complete!"
print_colored $WHITE "🎯 Run 'ytdl' from anywhere to start downloading videos"
print_colored $CYAN "📚 Need help? Check the README.md for usage examples"
echo

# Test installation
if command -v ytdl &> /dev/null; then
    print_colored $GREEN "✅ ytdl command is ready to use!"
else
    print_colored $YELLOW "⚠️  ytdl command not immediately available. Please restart your terminal."
fi

echo
print_colored $PURPLE "🌟 Thank you for installing YouTube Downloader CLI!"