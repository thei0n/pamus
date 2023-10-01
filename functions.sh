#!/bin/sh

sourceFile=$1
downloadDir=$2

downloadMus()
{
	file=$1
	mkdir -p $downloadDir && cd $downloadDir || exit 1
	line=1

	for i in $(sed "s/\s*#.*//g; /^$/ d" $sourceFile | awk '{print $1}');do
  
		if [ $(($line%6)) = 0 ];then
			ls *$i* && echo $i is already downloaded  || yt-dlp -x --audio-format mp3 $i
		else
			ls *$i* && echo $i is already downloaded || yt-dlp -x --audio-format mp3 $i &
		fi
  
	(( line ++))
  
	done
}

nameMus()
{
	cd $downloadDir || exit 1
	for i in $(sed "s/\s*#.*//g; /^$/ d" $sourceFile | awk '{print $1}');do
	mv *$i* "$i" > /dev/null 2>&1
	done

	for i in $(ls)
	do
		name=$(grep $i* $sourceFile | awk '{print $2}')
		genre=$(grep $i* $sourceFile | awk '{print $3}')
		artist=$(grep $i* $sourceFile | awk '{print $4}')
		album=$(grep $i* $sourceFile | awk '{print $5}')
		id3 -t "$name" -a "$artist" -l "$album" -g "$genre" $i && echo $i $name 
	done 

	for i in $(sed "s/\s*#.*//g; /^$/ d" $sourceFile | awk '{print $1}');do
	  name=$(grep $i* $sourceFile | awk '{print $2}')
	  mv *$i* "$name$i.mp3" > /dev/null 2>&1
	done
}
