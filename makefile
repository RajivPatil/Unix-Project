README.md: guessinggame.sh
	echo "**UNIX Assignment**\n" > README.md
	echo  "**"`date`"**" "\n">> README.md
	echo "**"`wc -l guessinggame.sh | awk '{print $$1}'`"**" "\n">> README.md

