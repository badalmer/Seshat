#! /home/lhill/.pyenv/shims/python3

import os
import sys
from difflib import get_close_matches

def find_close_matches(query):
    query = query.lower()
    
    wikis = {}

    with open("./Seshat/all_wikis.txt", "r") as found_wikis:
        for line in found_wikis:
            no_extention = os.path.splitext(line)[0]
            lower = no_extention.lower()
            if not line.lower() in wikis:
                wikis[lower] = line
   
    if query in wikis.keys():
       return wikis[query]
    elif len(get_close_matches(query, list(wikis.keys()))) > 0:
        result = get_close_matches(query, list(wikis.keys()))[0]
        return wikis[result]
    else:
        return False

def main():
    print(find_close_matches(sys.argv[1:][0]))
    
if __name__ == '__main__':
    main()
