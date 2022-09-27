@echo off
echo Downloading RetroArch from buildbot...
curl https://buildbot.libretro.com/nightly/windows/x86_64/RetroArch.7z --output RetroArch.7z

echo Extracting files and folders...
"C:\Program Files\7-Zip\7z.exe" x RetroArch.7z -o* -aoa

echo Replacing Steam version files from buildbot version...
xcopy ".\RetroArch\RetroArch-Win64\" ".\" /s /e /h /y /j
rmdir /q /s ".\RetroArch"
del /q /f RetroArch.7z