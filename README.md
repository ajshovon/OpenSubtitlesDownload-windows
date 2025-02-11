OpenSubtitlesDownload.py
========================

[![GitHub release](https://img.shields.io/github/release/emericg/OpenSubtitlesDownload.svg?style=flat-square)](https://github.com/emericg/OpenSubtitlesDownload/releases)
[![GitHub contributors](https://img.shields.io/github/contributors/emericg/OpenSubtitlesDownload.svg?style=flat-square)](https://github.com/emericg/OpenSubtitlesDownload/graphs/contributors)
[![GitHub issues](https://img.shields.io/github/issues/emericg/OpenSubtitlesDownload.svg?style=flat-square)](https://github.com/emericg/OpenSubtitlesDownload/issues)
[![License: GPL v3](https://img.shields.io/badge/license-GPL%20v3-brightgreen.svg?style=flat-square)](https://www.gnu.org/licenses/gpl-3.0)

# FORK INFO

## Use OpenSubtitlesDownload.py Script Easily On Windows

This fork contains files required for windows to add context menu for media file types (.mp4 & .mkv) and folder containing media to search subtitles easily.

### How To Use

- Clone or download this repo
- Add opensubtitles.org account info in `OpenSubtitlesDownload.py`, line 53 & 53. You may change other settings here based on your requirements. Read the readme below and checkout wiki page to explore all configs.
- Copy the repo folder `OpenSubtitlesDownload-windows` in `C:/utils/`. If the utils folder does not exit on C drive, make one or edit path in `.bat` & `.reg` files
- Run required `.reg` files from reg-files folder to add context menu depending on what you need. Reg files explained here:

    - Run "add_all_types.reg" to add context menu for all file types

        - Run "rem_all_types.reg" to undo this

    - Run "add_media_types.reg" to add context menu for mp4 & mkv files

    - Run "add_folder.reg" to add Find Subtitle context menu option for folders

Reg keys added:
```
HKEY_CLASSES_ROOT\*\shell\Subtitle
HKEY_CLASSES_ROOT\Directory\shell\Subtitle
HKEY_CLASSES_ROOT\SystemFileAssociations\.mp4\shell\Subtitle
HKEY_CLASSES_ROOT\SystemFileAssociations\.mkv\shell\Subtitle
```

You should see a option on right click called "Find Subtitles" and should work if done right.

To change icon, rename any icon to i.ico. You may need reboot to reflect changes.

# Original Readme

## Introduction

**OpenSubtitlesDownload.py** is a small software written in Python, built to help you **quickly find and download subtitles** for your favorite videos. It can be used as a nautilus script, or as a regular application working under GNOME or KDE desktop environments. You can also use it in full CLI mode (Command Line Interface) on your NAS, Raspberry Pi or anywhere you want really, as long as you have a working Python interpreter.

The subtitles search is done by precisely **identifying your video files** by computing unique movie hash sums. This way, you have more chance to find a subtitles that is an **exact match** for your video files, avoiding synchronization problems between the subtitles and the soundtrack. But what if that doesn't work? Well, a search with the filename will be performed, but be aware: results are a bit more... unpredictable (don't worry, you will be warned! and you can even disable this feature if you want).

The subtitles search and download service is powered by [opensubtitles.com](https://www.opensubtitles.com). Big thanks to their hard work on this amazing project! Be sure to [give them your support](https://www.opensubtitles.com/en/users/vip) if you appreciate the service provided, they sure need donations for handling the ever growing hosting costs!

> OpenSubtitlesDownload v6 use the new REST API from the [opensubtitles.com](https://www.opensubtitles.com) website

> A valid account from [opensubtitles.com](https://www.opensubtitles.com) is still **REQUIRED**

### Features

- Use a GNOME/GTK or KDE/Qt GUI depending on your favorite desktop environment
- Or just use the CLI! Great for automation, and it works on Linux, macOS and Windows
- Query subtitles in more than 60 different languages for documentaries, movies, TV shows and more...
- Query subtitles in multiple languages at once
- Query subtitles for multiple video files and folders at once
- Detect valid video files (using mime types and file extensions)
- Detect correct video titles by computing unique movie hash sums in order to download the right subtitles for the right file!
- If the video detection fails, a backup search using filename is performed
- Download subtitles automatically if only one is available, choose the one you want otherwise
- Download the subtitles file right next to the video file (need read/write permissions)
- Rename downloaded subtitles to match the video file. Possibility to add a language code (ex: movie_en.srt).

## Installation

#### Requirements

- `python` (version 3.6+)
- `zenity` (only needed for GNOME based desktop environments)
- `kdialog` (only needed for KDE based desktop environments)
- Common unix tools `ps` & `grep` (for GUI autodetection) and `wget` (for GNOME downloads)

#### Quick installation (nautilus script, with GNOME desktop environment)

For more installation options, check [the wiki](https://github.com/emericg/OpenSubtitlesDownload/wiki#installation-1)!

```bash
$ mkdir -p ~/.local/share/nautilus/scripts/
$ cd ~/.local/share/nautilus/scripts/
$ wget https://raw.githubusercontent.com/emericg/OpenSubtitlesDownload/master/OpenSubtitlesDownload.py
$ chmod u+x OpenSubtitlesDownload.py
```

#### IMPORTANT STEP: use an opensubtitles.com account!

To use OpenSubtitlesDownload you need to:

- [Create an account](https://www.opensubtitles.com/) on opensubtitles.com website
- [Use that account](https://github.com/emericg/OpenSubtitlesDownload/wiki/Adjust-settings#log-in-with-a-registered-user) with the script

The old opensubtitles.ORG accounts won't work anymore (unless you migrated them from the new website).

## Screenshots!

Start the search with a simple right click on a video file.
![Start subtitles search](https://i.imgur.com/gO02lb5.png)

If multiple subtitles are available, choose the one you want from the list!
![Multiple subtitles selection](https://i.imgur.com/v6C9QP4.png)

The download will only take a moment.
![Download selected subtitles](https://i.imgur.com/CI99lyx.png)

Enjoy your subtitled video!
![Enjoy your subtitled video!](https://i.imgur.com/9KKvISR.jpg)

## Website

You can browse the project website at <https://emeric.io/OpenSubtitlesDownload>  
You can browse the project GitHub page at <https://github.com/emericg/OpenSubtitlesDownload>  
Learn more about OpenSubtitlesDownload.py installation and configuration on the wiki at <https://github.com/emericg/OpenSubtitlesDownload/wiki>  

## Contributors

- FriendlyTroll <https://github.com/FriendlyTroll> for his work on the REST API port
- Thiago Alvarenga Lechuga <thiagoalz@gmail.com> for his work on the 'Windows CLI' and the 'folder search'
- jeroenvdw for his work on the 'subtitles automatic selection' and the 'search by filename'
- Gui13 for his work on the arguments parsing
- Tomáš Hnyk <tomashnyk@gmail.com> for his work on the 'multiple language' feature
- Carlos Acedo <carlos@linux-labs.net> for his work on the original script
- And [many others](https://github.com/emericg/OpenSubtitlesDownload/graphs/contributors)!

## Get involved

#### Users
You can help us find and report bugs, propose new features, help with the documentation and more! Visit the [Issues](https://github.com/emericg/OpenSubtitlesDownload/issues) section to start!

#### Developers
You can browse the code on the GitHub page, submit patches and pull requests! Your help would be greatly appreciated ;-)

## License

OpenSubtitlesDownload.py is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.  
Read the [LICENSE](LICENSE.md) file or [consult the license on the FSF website](https://www.gnu.org/licenses/gpl-3.0.txt) directly.

> Emeric Grange <emeric.grange@gmail.com>
