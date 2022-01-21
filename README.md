# youtube-dl-music

## How to use

Build and run the Docker container from the Dockerfile

To select playlists just put in a playlist link in the text file
`config/playlists.txt`

## Private playlists

To download private playlists (For example all your liked music using
(LM)[https://www.youtube.com/playlist?list=LM])
you can drop a file with your cookies for youtube.com in the `config` folder

I personally use this plugin for firefox to download the cookies:

(https://addons.mozilla.org/en-US/firefox/addon/cookies-txt/)[https://addons.mozilla.org/en-US/firefox/addon/cookies-txt/]

And I go to the youtube.com and click on the cookies.txt extension icon and
download for that site only.

Drop the `cookies.txt` file into `config` folder.