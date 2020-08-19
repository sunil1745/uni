
all: README.md  date.sh number.sh

README.md:
	
	touch README.md
	echo "# title" > README.md
date.sh: date.sh
	 date >> README.md

number.sh:
	echo "word count is" >> README.md
	wc -l  guessinggame.sh | egrep -o ."[0-9]+"  >> README.md
clean:
	rm date.sh
	rm number.sh
	rm README.md
