Authors: Hugh Shanno, Ashok Khare, Cole Roseth

Title: Clash Royale Deck Lookup

This website allows users to search a deck and find out useful statistics about the deck.

The website may be run locally using flask, but the user will have to set up the database locally:
Step 1: run the createtables.sql script
Step 2: populate the database using cardlist.csv (for the CardsInDeck table) and data_ord.csv (for the matches table)
Step 3: update the psqlconfig.py file to have the correct user, database, and password

Finally, webapp.py may be run using Flask, and then the website will be available to be accessed.

Warning: There are roughly 186,000 unique decks in our dataset, but slightly more than 2 trillion possible clash royale decks. Therefore, there is a roughly 1 x 10^-7 chance of any given deck returning results. Some decks that do return results (are in our dataset) are:
1) Hog Rider, Ice Spirit, Ice Golem, Skeletons, Musketeer, Cannon, The Log, Fireball
2) Goblin Barrel, Dart Goblin, Fireball, Skeleton Army, Inferno Tower, Skeleton Barrel, The Log, Valkyrie
3) Knight, Archers, Skeletons, Ice Spirit, X-Bow, Tesla, The Log, Fireball
