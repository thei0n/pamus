#!/bin/sh

mkdir -p ~/.config/pamus 
mkdir -p ~/.config/pamus/functions

cp ./functions.sh ~/.config/pamus/functions/functions.sh
sudo cp main.sh /usr/local/bin/pamus

if [ -z ~/.config/pamus/music.txt ]
then
	touch ~/.config/pamus/music.txt  
	echo 'M5YXXU0rKjc Happy_Nation Pop Ace_of_Base Happy_Nation' >> ~/.config/pamus/music.txt
fi

echo 'All done:
	"Happy Nation by Ace of Base" is add to the config file.
	To download it run
		pamus -S
	To tag it run
		pamus -T '


 
