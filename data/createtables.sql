DROP TABLE IF EXISTS DeckStats;
DROP TABLE IF EXISTS CardsInDeck;
CREATE TABLE CardsInDeck (
    DeckID text,
    Card1 int,
    Card2 int,
    Card3 int,
    Card4 int,
    Card5 int,
    Card6 int,
    Card7 int,
    Card8 int
);


DROP TABLE IF EXISTS Matches;
CREATE TABLE Matches (
    MatchNumber int,
    Player1Card1 int,
    Player1Card2 int,
    Player1Card3 int,
    Player1Card4 int,
    Player1Card5 int,
    Player1Card6 int,
    Player1Card7 int,
    Player1Card8 int,
    Player2Card1 int,
    Player2Card2 int,
    Player2Card3 int,
    Player2Card4 int,
    Player2Card5 int,
    Player2Card6 int,
    Player2Card7 int,
    Player2Card8 int,
    Player1Trophies int,
    Player2Trophies int,
    Winner int
);

DROP TABLE IF EXISTS Cards;
CREATE TABLE Cards (
    CardID int,
    CardName text,
    ElixirCost int
);