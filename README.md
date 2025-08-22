# YouTube 4K Downloader CLI 🎥

A beautiful, interactive YouTube video downloader for macOS with support for 4K quality, subtitles, and smart time-based greetings.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-macOS-lightgrey.svg)
![Shell](https://img.shields.io/badge/shell-bash-green.svg)

## ✨ Features

- 🎥 **4K Video Downloads** - Download videos up to 4K quality
- 🎵 **Audio-Only Mode** - Extract high-quality audio
- 📝 **Multi-Language Subtitles** - Download subtitles in multiple languages
- 🎯 **Interactive Interface** - Beautiful CLI with colors and emojis
- 🍺 **Auto-Setup** - Automatic Homebrew and dependency management
- 📁 **Smart Organization** - Downloads saved to organized folders
- ⏰ **Time-Aware** - Personalized greetings based on time of day
- 🔄 **Continuous Downloads** - Download multiple videos in one session

## 🚀 Quick Start

### One-Line Installation
```bash
curl -fsSL https://raw.githubusercontent.com/vickey98/ytdl-cli/main/install.sh | bash
```

### Manual Installation
```bash
git clone https://github.com/vickey98/ytdl-cli.git
cd ytdl-cli
chmod +x ytdl
./ytdl
```

## 📖 Usage

Simply run the command and follow the interactive prompts:

```bash
ytdl
```

### What the app does:
1. 👋 **Welcomes you** with a personalized greeting
2. 🔍 **Checks dependencies** and installs them if needed
3. 🔗 **Asks for YouTube URL** 
4. 📊 **Shows video information** (title, channel, duration, views)
5. 📋 **Lists available qualities** with file sizes
6. 📝 **Offers subtitle options** in available languages
7. 🚀 **Downloads with progress** tracking
8. 🔄 **Asks if you want to download more** or exit

## 🎬 Example Session

```
🎬 ═══════════════════════════════════════════════════════════════
    INTERACTIVE YOUTUBE DOWNLOADER
═══════════════════════════════════════════════════════════════

    👋 Hi John! Welcome to Interactive YouTube Downloader

🔗 Please enter YouTube URL: https://www.youtube.com/watch?v=dQw4w9WgXcQ

📹 Video Details:
   Title:     Rick Astley - Never Gonna Give You Up
   Channel:   RickAstleyVEVO
   Duration:  3:33
   Views:     1.4B views

📋 Available Download Options:
   1. 🎵 Audio Only (Best Quality)
   2. 🏆 4K UHD (3840x2160) [mp4] 60fps - 284.5MiB
   3. ⭐ Full HD (1920x1080) [mp4] 60fps - 76.8MiB
   4. 📺 HD (1280x720) [mp4] 30fps - 41.2MiB

👆 Select download option (1-4): 3

📝 Subtitle Options:
   1. 🚫 No subtitles
   2. 🌍 Auto-select (English if available)
   3. 🔤 Spanish (es)

📝 Select subtitle option (1-3): 2

🚀 Starting download...
📥 Downloading... 100% (76.8MiB)
✅ Video download completed!

🎉 Download completed successfully!
📁 Files saved to: /Users/john/Downloads/YouTube Videos
```

## 📋 Requirements

- **macOS** (10.15 or later)
- **Homebrew** (auto-installed if missing)
- **yt-dlp** (auto-installed)
- **ffmpeg** (auto-installed)

The app will automatically check and install missing dependencies with your permission.

## 📁 Download Location

All videos are saved to: `~/Downloads/YouTube Videos/`

Files include:
- Video file (e.g., `Video Title.mp4`)
- Subtitle file (e.g., `Video Title.en.vtt`) if selected

## 🎯 Quality Options

| Quality | Resolution | Description |
|---------|------------|-------------|
| 🏆 4K UHD | 3840×2160 | Ultra High Definition |
| 💎 2K QHD | 2560×1440 | Quad High Definition |
| ⭐ Full HD | 1920×1080 | Full High Definition |
| 📺 HD | 1280×720 | High Definition |
| 📱 SD | 854×480 | Standard Definition |
| 🎵 Audio Only | N/A | Best available audio quality |

## 🛠️ Troubleshooting

### Common Issues

**"Command not found: ytdl"**
```bash
# Restart terminal or reload shell config
source ~/.zshrc  # or ~/.bashrc
```

**"Permission denied"**
```bash
chmod +x ytdl
```

**"Homebrew not found"**
```bash
# Install Homebrew manually
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**"No formats available"**
- Video might be private or region-restricted
- Try a different video URL
- Check your internet connection

### Manual Dependency Installation
```bash
# Install dependencies manually if auto-install fails
brew install yt-dlp ffmpeg
```

## 🔧 Advanced Usage

### Run from any directory
After installation, you can run `ytdl` from anywhere:
```bash
cd ~/Desktop
ytdl  # Works from any location
```

### Multiple downloads
The app supports downloading multiple videos in one session - just select "Download another video" when prompted.

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [yt-dlp](https://github.com/yt-dlp/yt-dlp) - The powerful YouTube downloader that makes this possible
- [FFmpeg](https://ffmpeg.org/) - For video and audio processing
- [Homebrew](https://brew.sh/) - The missing package manager for macOS

## 📞 Support

- 🐛 [Report Issues](https://github.com/vickey98/ytdl-cli/issues)
- 💬 [GitHub Discussions](https://github.com/vickey98/ytdl-cli/discussions)
- ⭐ Star this repo if you find it useful!

---

**Made with ❤️ for the YouTube downloading community**