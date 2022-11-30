This is a clone of a directory I use in all my computers. It includes helper utilities that make repetitive tasks easier.

Why do something manually in 2 minutes when you can spend an hour automating it 🤡

<br>

# How to install (windows) ⚡

Clone the repo and add the local path to your environment variables.

<br>

# Included commands 🐣

## yt-dlp
This is the executable from the popular [yt-dlp](https://github.com/yt-dlp/yt-dlp/) repository. It's a simple command line youtube downloader. To use, write `yt-dlp "<video_url>"`

<br>

## music-dlp
A wrapper around `yt-dlp` to download music. If you want to download audio from a video, and save it without the ID of the video appended in the file name (which is the default behaviour), use this.

Usage: `music-dlp "<video_url>"`. By default, it downloads the highest quality .m4a file, which is a lossless format compatible with Rekordbox.

<br>

## pa
this is a shorthand for `php artisan` command for Laravel's [Artisan Console](https://laravel.com/docs/9.x/artisan).

So `php artisan make:model User` can be condensed to `pa make:model User`.