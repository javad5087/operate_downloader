@echo off
cd /d "%~dp0"

if not exist OGG mkdir OGG

for %%f in (*.mp4) do (
    ffmpeg -i "%%f" -vn -c:a libopus -b:a 96k "OGG\%%~nf.ogg"
)

pause