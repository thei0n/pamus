#!/bin/sh

source ~/.config/pamus/functions/functions.sh

sourceFile=~/.config/pamus/music.txt
downloadDir=~/Music


if  [ $@ = '-S' ] || [ $@ = '--sync' ]
then
	 downloadMus $sourceFile $downloadDir

if [ $@ = '-T' ] || [ $@ = '--tag' ]
then
   nameMus $sourceFile $downloadDir
else
	echo bad usage
fi
