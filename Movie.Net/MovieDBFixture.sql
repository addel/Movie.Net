CREATE TABLE Actor
(
	Id INT NOT NULL,
	PRIMARY KEY (Id),
	FirstName VARCHAR(32) NOT NULL,
	LastName VARCHAR(32) NOT NULL
)

INSERT INTO Actor VALUES ( 1, 'Clint', 'Eastwood')
INSERT INTO Actor VALUES ( 2, 'Johnny', 'Depp')
INSERT INTO Actor VALUES ( 3, 'Penelope', 'Cruz')
INSERT INTO Actor VALUES ( 4, 'Nicolas', 'Cage')
INSERT INTO Actor VALUES ( 5, 'Dennis', 'Hopper')
INSERT INTO Actor VALUES ( 6, 'Gene', 'Hackman')
INSERT INTO Actor VALUES ( 7, 'Sharon', 'Stone')
INSERT INTO Actor VALUES ( 8, 'Russell', 'Crowe')
INSERT INTO Actor VALUES ( 9, 'Leonardo', 'DiCaprio')
INSERT INTO Actor VALUES (10, 'Cameron', 'Diaz')
INSERT INTO Actor VALUES (11, 'Brad', 'Pitt')
INSERT INTO Actor VALUES (12, 'Edward', 'Norton')
INSERT INTO Actor VALUES (13, 'Morgan', ' Freeman')
INSERT INTO Actor VALUES (14, 'Paul', ' Newman')
INSERT INTO Actor VALUES (15, 'Jane', ' Fonda')

CREATE TABLE Film
(
	Id INT NOT NULL,
	PRIMARY KEY (Id),
	Title VARCHAR(32) NOT NULL,
	PubYear INT NOT NULL
)

INSERT INTO Film VALUES ( 1, 'The Dark Knight', 2008)
INSERT INTO Film VALUES ( 2, 'Star wars', 2001)
INSERT INTO Film VALUES ( 3, 'Alien', 2001)
INSERT INTO Film VALUES ( 4, 'Coupe toi les ongle et passe moi le beurre', 1993)
INSERT INTO Film VALUES ( 5, 'Public Enemies', 2009)
INSERT INTO Film VALUES ( 6, 'Matrix', 1992)
INSERT INTO Film VALUES ( 7, 'Marc and Grego XXX', 1995)
INSERT INTO Film VALUES ( 8, 'Gangs of New York', 2002)
INSERT INTO Film VALUES ( 9, 'Gladiator', 2000)
INSERT INTO Film VALUES (10, 'Avatar', 2008)
INSERT INTO Film VALUES (11, 'Fight Club', 1999)
INSERT INTO Film VALUES (12, 'Se7en', 1995)
INSERT INTO Film VALUES (13, 'Terminator', 1967)
INSERT INTO Film VALUES (14, 'Black hawk down', 1965)

CREATE TABLE Genres
(
	Id INT NOT NULL,
	PRIMARY KEY (Id),
	Name VARCHAR(32) NOT NULL
)

INSERT INTO Genres VALUES ( 1, 'Horreur')
INSERT INTO Genres VALUES ( 2, 'Action')
INSERT INTO Genres VALUES ( 3, 'Science-fiction')
INSERT INTO Genres VALUES ( 4, 'Animation')
INSERT INTO Genres VALUES ( 5, 'Porno')
INSERT INTO Genres VALUES ( 6, 'Thriller')


CREATE TABLE ActorFilm
(
	IdActor INT NOT NULL REFERENCES Actor(Id),
	IdFilm INT NOT NULL REFERENCES Film(Id),
	PRIMARY KEY (IdActor, IdFilm)
)

INSERT INTO ActorFilm VALUES ( 1, 1)
INSERT INTO ActorFilm VALUES ( 2, 2)
INSERT INTO ActorFilm VALUES ( 3, 2)
INSERT INTO ActorFilm VALUES ( 3, 3)
INSERT INTO ActorFilm VALUES ( 4, 3)
INSERT INTO ActorFilm VALUES ( 4, 4)
INSERT INTO ActorFilm VALUES ( 5, 4)
INSERT INTO ActorFilm VALUES ( 2, 5)
INSERT INTO ActorFilm VALUES ( 1, 6)
INSERT INTO ActorFilm VALUES ( 6, 6)
INSERT INTO ActorFilm VALUES ( 6, 7)
INSERT INTO ActorFilm VALUES ( 7, 7)
INSERT INTO ActorFilm VALUES ( 8, 7)
INSERT INTO ActorFilm VALUES ( 9, 7)
INSERT INTO ActorFilm VALUES ( 9, 8)
INSERT INTO ActorFilm VALUES (10, 8)
INSERT INTO ActorFilm VALUES ( 8, 9)
INSERT INTO ActorFilm VALUES ( 8,10)
INSERT INTO ActorFilm VALUES ( 9,10)
INSERT INTO ActorFilm VALUES (11,11)
INSERT INTO ActorFilm VALUES (12,11)
INSERT INTO ActorFilm VALUES (11,12)
INSERT INTO ActorFilm VALUES (13,12)
INSERT INTO ActorFilm VALUES (14,13)
INSERT INTO ActorFilm VALUES (15,14)

CREATE TABLE GenreFilm
(
	IdGenre INT NOT NULL REFERENCES Genres(Id),
	IdFilm INT NOT NULL REFERENCES Film(Id),
	PRIMARY KEY (IdGenre, IdFilm)
)

INSERT INTO GenreFilm VALUES ( 2, 1)
INSERT INTO GenreFilm VALUES ( 3, 2)
INSERT INTO GenreFilm VALUES ( 3, 3)
INSERT INTO GenreFilm VALUES ( 5, 4)
INSERT INTO GenreFilm VALUES ( 6, 5)
INSERT INTO GenreFilm VALUES ( 3, 6)
INSERT INTO GenreFilm VALUES ( 5, 7)
INSERT INTO GenreFilm VALUES ( 2, 8)
INSERT INTO GenreFilm VALUES ( 2, 9)
INSERT INTO GenreFilm VALUES ( 3, 10)
INSERT INTO GenreFilm VALUES ( 6, 11)
INSERT INTO GenreFilm VALUES ( 6, 12)
INSERT INTO GenreFilm VALUES ( 2, 13)
INSERT INTO GenreFilm VALUES ( 2, 14)





