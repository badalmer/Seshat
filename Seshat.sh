#! /usr/bin/zsh

read "?Hello Lore, what would you like to read about today? " WIKI

ls ~/vimwiki > ~/Seshat/all_wikis.txt
RESULT=$(python ~/Seshat/close_matches.py "$WIKI" )

FILE=~/vimwiki/$WIKI.wiki
FILE2=~/vimwiki/$RESULT
if [ -f "$FILE" ]; then
    echo "I found it! Here is the file on $WIKI :)"
    vi $FILE
elif [ "$RESULT" ]; then
    read "?You want me to open the file on $RESULT correct?" CLOSE
    if [ "$CLOSE" = 'y' ]; then
        echo "There it is! Opening the file on $WIKI :)"
        vi $FILE2
    else
        echo "I'm sorry the archives must be incomplete :("
    fi
else
    echo "I'm sorry the archives must be incomplete :("
fi