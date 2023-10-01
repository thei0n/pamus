#!/bin/sh

source ~/.config/pamus/functions/functions.sh

sourceFile=~/.config/pamus/music.txt
downloadDir=~/Music

then

  [ $@ = '-S' ] || [ $@ = '--sync' ] && downloadMus $sourceFile $downloadDir
  [ $@ = '-T' ] || [ $@ = '--tag' ] && nameMus $sourceFile $downloadDir

else

  echo "Usage:
   -S or --sync -> Download music files
   -T or --tag -> Tag downloaded music files"
fi
