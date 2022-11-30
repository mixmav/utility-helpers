@echo off
echo.
yt-dlp --ignore-errors --format "bestaudio[ext=m4a]" --output "%(title)s.%(ext)s" %*