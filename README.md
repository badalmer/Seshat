# Seshat
I take notes using [Vimwiki](https://github.com/vimwiki/vimwiki) and created this script to open any of my notes quickly no mater what folder I was in on my terminal

When I wanted to look at one of my notes previously, I had to *open vim => open my wiki file => look for the note I wanted => open it*, then I could read it.
This weekend I thought, wouldn't it be great if a tiny mouse named after the Egyptian goddess of libraries would simply fetch me exactly the note I wanted?
So I made Seshat :)

I've used the **difflib get_close_matches** library so if you type the title of the note you want but mess up slightly Seshat can figure out what you want.

The next thing I will do with it is to make the echo'd text apear in the speach bubble of an ascii mouse. Currently you have to imagine the mouse part.

Things you will have to do it get it running:
1. Clone the contents into your home directory (or clone anywhere and update the paths in the files to point there)
2. run `which python` and update the bang at the top of the **close_matches.py** file to that output
3. run `which zsh` and update the bang at the top of the **Seshat.sh** file to that output
4. Change the word 'Lore' to whatever your name is in Seshat.sh
5. In your .zshrc add in the line `alias seshat='. ~/Seshat/Seshat.sh'`

![Seshat terminal output](Screenshot.png?raw=true)
*btw it says took 12 seconds because thats how long I had the vim file open for

I am on ubuntu and use zsh, you may need to make some adjustments if you do not. 

I hope you enjoy it! 
