This is a clone of a directory I use in all my computers. It includes helper utilities that make repetitive tasks easier.

Why do it manually in 30 seconds when you can spend an hour automating it 🫠

<br>

# How to install (windows) ⚡

Clone the repo and [add](https://www.h3xed.com/windows/how-to-add-to-and-edit-windows-path-variable) the download location to your PATH variable.

<br>

# Included commands 🐣

## yt-dlp
This is a copy of the executable from the popular [yt-dlp](https://github.com/yt-dlp/yt-dlp/) repository. It's a simple command line YouTube downloader.

Usage: `yt-dlp <video_url>`

<br>

## music-dlp
A wrapper around `yt-dlp` to easily download music. Downloads only the audio from a video, and saves it without the ID of the video appended to the title (which is the default behaviour of `yt-dlp`).

By default, it downloads the highest quality .m4a file, which is a lossless format compatible with Rekordbox.

Usage: `music-dlp <video_url>`

<br>

## pa
this is a shorthand for the `php artisan` command for Laravel's [Artisan Console](https://laravel.com/docs/9.x/artisan).

Usage: `pa make:model User` (will translate to `php artisan make:model User`)

<br>

## update-dr (requires [NodeJS](https://nodejs.org/))
Helper to update the document root for your Apache server to the current working directory and restart the server. If you've had to do this manually, you'll know how much time this can save.

The path to the apache folder is set in `update-dr.bat` and has a default value of `C:/xampp/apache`. This command assumes that ***only one*** uncommented DocumentRoot statement is present in Apache's `httpd.conf`.
Usage: `update-dr` from any directory you want the document root to be set to.

*Note: this command may need admin privileges if the server process was started with admin privileges.*