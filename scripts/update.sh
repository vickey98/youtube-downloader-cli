#!/bin/bash
echo "🔄 Updating YouTube Downloader CLI..."
git pull origin main
chmod +x ytdl
cp ytdl ~/.local/bin/ytdl
echo "✅ Update complete!"