all: README.md title.sh date.sh number.sh 
README.md:
	touch README.md
title.sh:
	echo #title > README.md
date.sh: date.sh
	 date >> README.md
number.sh:
	wc -l  guessinggame.sh | egrep -o ."[0-9]+"  >> README.md
clean:
	rm date.sh
	rm number.sh
	rm README.md
