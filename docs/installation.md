# Installation Guide

## 🚀 Quick Installation

### Method 1: One-Line Install (Recommended)
```bash
curl -fsSL https://raw.githubusercontent.com/yourusername/ytdl-cli/main/install.sh | bash
```

This will:
- Download the latest version
- Install to `~/.local/bin/ytdl`
- Add to your PATH automatically
- Make it available from anywhere

### Method 2: Manual Installation
```bash
# Clone the repository
git clone https://github.com/yourusername/ytdl-cli.git
cd ytdl-cli

# Make executable
chmod +x ytdl

# Run directly
./ytdl

# Or install globally
./install.sh
```

## 📋 System Requirements

### Supported Systems
- **macOS** (10.15 Catalina or later)
- **Apple Silicon** (M1/M2) and **Intel** Macs supported

### Dependencies
The following will be automatically installed if missing:

1. **Homebrew** - Package manager for macOS
2. **yt-dlp** - YouTube downloader engine
3. **ffmpeg** - Video/audio processing
4. **jq** - JSON processor (optional)

## 🔧 Manual Dependency Installation

If automatic installation fails, install dependencies manually:

### Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install Required Packages
```bash
brew install yt-dlp ffmpeg jq
```

## 🎯 Verification

After installation, verify everything works:

```bash
# Check if ytdl is accessible
which ytdl

# Test the installation
ytdl --help  # This should show the welcome screen

# Check dependencies
yt-dlp --version
ffmpeg -version
```

## 📁 Installation Locations

### Global Installation (via install.sh)
- **Script location**: `~/.local/bin/ytdl`
- **PATH addition**: Added to `~/.zshrc` or `~/.bashrc`
- **Downloads folder**: `~/Downloads/YouTube Videos`

### Local Installation (manual)
- **Script location**: Where you cloned the repository
- **Usage**: Run with `./ytdl` from repository directory

## 🔄 Updating

### Update via Git (if installed manually)
```bash
cd ytdl-cli
git pull origin main
chmod +x ytdl
```

### Update global installation
```bash
# Re-run the installer
curl -fsSL https://raw.githubusercontent.com/yourusername/ytdl-cli/main/install.sh | bash
```

## 🗑️ Uninstallation

### Remove global installation
```bash
# Remove the script
rm ~/.local/bin/ytdl

# Remove PATH entry (optional)
# Edit ~/.zshrc or ~/.bashrc and remove the ytdl PATH line
```

### Keep dependencies (recommended)
The installed packages (yt-dlp, ffmpeg) are useful for other projects.

### Remove all dependencies (optional)
```bash
brew uninstall yt-dlp ffmpeg jq
```

## 🚨 Troubleshooting Installation

### "Permission denied" error
```bash
chmod +x ytdl
# or
chmod +x install.sh
```

### "Command not found: ytdl" after installation
```bash
# Reload shell configuration
source ~/.zshrc  # for zsh
# or
source ~/.bashrc  # for bash

# Or restart your terminal
```

### "curl: command not found"
```bash
# Install curl (usually pre-installed on macOS)
brew install curl
```

### Homebrew installation fails
1. Check your internet connection
2. Ensure you have administrator privileges
3. Follow Homebrew's official installation guide
4. Try installing Homebrew manually first

### PATH not updated automatically
Manually add to your shell configuration:

```bash
# For zsh (default on modern macOS)
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# For bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

## 🔒 Security Notes

- The installer script is open source and can be reviewed before running
- It only modifies `~/.local/bin` and shell configuration files
- No system-level changes are made
- All dependencies are installed via Homebrew (trusted package manager)

## 🆘 Getting Help

If you encounter issues:

1. Check this troubleshooting section
2. Review the [main README](../README.md)
3. [Open an issue](https://github.com/yourusername/ytdl-cli/issues) on GitHub
4. Include your macOS version and error messages