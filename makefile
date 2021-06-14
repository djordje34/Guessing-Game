all: README.md

README.md:
	echo '# DJORDJE KARISIC UNIX WORKBENCH' > README.md
	echo '## Peer Graded assignment ##' >> README.md
	echo '* This makefile was run at: $(shell date +%Y-%m-%d:%H:%M:%S) *' >> README.md
	echo '* There were $(shell wc -l < guessinggame.sh) lines in guessinggame.sh *' >> README.md
	echo '# Enjoy the guessing Game! #'>>README.md
clean:
	rm README.md