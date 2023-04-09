@echo off
set files=%*
python "C:\utils\OpenSubtitlesDownload-windows\OpenSubtitlesDownload.py" --cli -i -a %files%
@pause
