SELECT AVG(Winner) FROM Matches
WHERE Player1Card1 = 8
AND Player1Card2 = 34
AND Player1Card3 = 37
AND Player1Card4 = 52
AND Player1Card5 = 69
AND Player1Card6 = 88
AND Player1Card7 = 92
AND Player1Card8 = 97;

SELECT AVG(Player1Trophies) FROM Matches
WHERE Player1Card1 = 11
AND Player1Card2 = 13
AND Player1Card3 = 25
AND Player1Card4 = 31
AND Player1Card5 = 58
AND Player1Card6 = 80
AND Player1Card7 = 86
AND Player1Card8 = 87;

SELECT Player1Card1, Player1Card2, Player1Card3, Player1Card4, Player1Card5, Player1Card6, Player1Card7, Player1Card8
FROM Matches
WHERE Player1Trophies = 7246
AND Winner = 1;