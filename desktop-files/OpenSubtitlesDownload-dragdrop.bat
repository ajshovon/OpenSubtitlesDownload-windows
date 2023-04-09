@echo off

set files=%*

REM Set the correct path to your OpenSubtitlesDownload.py executable here
python "C:\utils\OpenSubtitlesDownload-windows\OpenSubtitlesDownload.py" --cli -i -a %files%

@pause
