# Music downloader and tagger program written in bash.

<!-- The program consists of 3 files: -->
<!--   downloader script -->
<!--   tagger script -->
<!--   list file -->

## Info
While downloading script downloads music according to the links in the list file, it downloads 5
music files simultaneously and when the 5th is finished it downloads the next 5.

Tag part of the script tags the downloaded file which include their id numbers.

## Usage
* pamus -S or --sync -> to sync (download) 
* pamus -T or --tag -> to tag downloaded files  

### Known bugs
  Seems to not work properly when there are non-latin letters in the video title.

### to add 
* pamus -Su -> download 
* pamus -Sy -> tag
* pamus -Syu -> download and tag
