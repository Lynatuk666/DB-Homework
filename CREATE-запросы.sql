CREATE Table IF NOT EXISTS Genres
(
	id SERIAL PRIMARY KEY,
	name VARCHAR(64) UNIQUE
);
CREATE Table IF NOT EXISTS Musicians
(
	id SERIAL PRIMARY KEY,
	name VARCHAR(64) UNIQUE
);
CREATE TABLE IF NOT EXISTS Albums
(
	id SERIAL PRIMARY KEY,
	name VARCHAR(64) NOT NULL,
	year_of_issue DATE not null
);
CREATE TABLE IF NOT EXISTS Tracks
(
	id Serial PRIMARY KEY,
	name VARCHAR(64) NOT NULL UNIQUE,
	duration Time NOT NULL,
	album_id int REFERENCES Albums(id)
);
CREATE TABLE IF NOT EXISTS Collections
(
	id SERIAL PRIMARY KEY,
	name VARCHAR(64) UNIQUE,
	date_of_issue DATE NOT NULL
);
CREATE TABLE IF NOT EXISTS Musicians_Genres
(
	musician_id INT REFERENCES Musicians(id),
	genre_id INT REFERENCES Genres(id),
	CONSTRAINT musician_genge_pk PRIMARY KEY (musician_id, genre_id)
);
CREATE TABLE IF NOT EXISTS Musicians_Albums
(
	musician_id int REFERENCES Musicians(id),
	album_id int REFERENCES Musicians(id),
	CONSTRAINT musician_album_pk PRIMARY KEY (musician_id, album_id)
);
CREATE TABLE IF NOT EXISTS Collection_Track
(
	track_id INT REFERENCES Tracks(id),
	collection_id INT REFERENCES Collections(id),
	CONSTRAINT Collection_Track_PK Primary key (track_id, collection_id)

);
