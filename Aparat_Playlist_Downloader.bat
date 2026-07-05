@echo off
title Aparat Playlist Downloader
cd /d "%~dp0"
color 0A

echo =====================================
echo      Aparat Playlist Downloader
echo =====================================
echo.

set /p URL=Enter Aparat Playlist URL:

echo.
echo Downloading...
echo.

yt-dlp.exe ^
-o "Downloads\%%(playlist_index)s - %%(title)s.%%(ext)s" ^
--yes-playlist ^
"%URL%"

echo.
echo =====================================
echo Finished
echo =====================================
pause