INSERT INTO Genres (name) VALUES (HipHop);
INSERT INTO Genres (name) VALUES (Dance);
INSERT INTO Genres (name) VALUES (Rock);

INSERT INTO Musicians (name) VALUES ('Noize MC');
INSERT INTO Musicians (name) VALUES ('Eminem')
INSERT INTO Musicians (name) VALUES ('Linkin Park')
INSERT INTO Musicians (name) VALUES ('MORGENSHTERN')

INSERT INTO Albums(name, year_of_issue) VALUES ('Последний альбом', '2010-05-28');
INSERT INTO Albums(name, year_of_issue) VALUES ('Улыбнись, дурак!', '2019-01-01');
INSERT INTO Albums(name, year_of_issue) VALUES ('Meteora', '2003-03-25');
INSERT INTO Albums(name, year_of_issue) VALUES ('Music to Be Murdered By', '2020-01-17');

INSERT INTO Tracks (name, duration, album_id) VALUES ('Улыбнись, дурак!', '0:1:15', 2)
INSERT INTO Tracks (name, duration, album_id) VALUES ('Буду твоей пальмой!', '0:3:14', 2)
INSERT INTO Tracks (name, duration, album_id) VALUES ('So High!', '0:3:05', 2)
INSERT INTO Tracks (name, duration, album_id) VALUES ('Пам Пам Пам!', '0:2:22', 2)
INSERT INTO Tracks (name, duration, album_id) VALUES ('Вечный сон', '0:3:25', 2)

INSERT INTO Tracks (name, duration, album_id) VALUES ('Тыщатыщ', '0:3:31', 1)
INSERT INTO Tracks (name, duration, album_id) VALUES ('Мой Манки бизнес', '0:3:58', 1);
INSERT INTO Tracks (name, duration, album_id) VALUES ('Ругань из-за стены', '0:3:44', 1);
INSERT INTO Tracks (name, duration, album_id) VALUES ('На Марсе классно', '0:4:14', 1);

INSERT INTO Tracks (name, duration, album_id) VALUES ('Don''t Stay', '0:3:08', 3);
INSERT INTO Tracks (name, duration, album_id) VALUES ('Somewhere I Belong', '0:3:34', 3);
INSERT INTO Tracks (name, duration, album_id) VALUES ('Lying from You', '0:2:55', 3);
INSERT INTO Tracks (name, duration, album_id) VALUES ('Hit the Floor', '0:2:44', 3);
INSERT INTO Tracks (name, duration, album_id) VALUES ('Easier to Run', '0:3:24', 3);

INSERT INTO Tracks (name, duration, album_id) VALUES ('Premonition', '0:2:54', 4);
INSERT INTO Tracks (name, duration, album_id) VALUES ('Unaccommodating', '0:3:37', 4);
INSERT INTO Tracks (name, duration, album_id) VALUES ('Darkness', '0:5:37', 4);
INSERT INTO Tracks (name, duration, album_id) VALUES ('Leaving my Heaven', '0:4:26', 4);
INSERT INTO Tracks (name, duration, album_id) VALUES ('Yah Yah', '0:4:47', 4);

INSERT INTO Musicians_Genres (musician_id, genre_id) VALUES (1,1);
INSERT INTO Musicians_Genres (musician_id, genre_id) VALUES (1,3);
INSERT INTO Musicians_Genres (musician_id, genre_id) VALUES (2,1);
INSERT INTO Musicians_Genres (musician_id, genre_id) VALUES (3,3);
INSERT INTO Musicians_Genres (musician_id, genre_id) VALUES (4,2);
INSERT INTO Musicians_Genres (musician_id, genre_id) VALUES (4,1);

INSERT INTO Musicians_Albums (musician_id, album_id) VALUES (1,1);
INSERT INTO Musicians_Albums (musician_id, album_id) VALUES (4,2);
INSERT INTO Musicians_Albums (musician_id, album_id) VALUES (3,3);
INSERT INTO Musicians_Albums (musician_id, album_id) VALUES (2,4);

INSERT INTO Collections (name, date_of_issue) VALUES ('Грустное', '2017-01-1');
INSERT INTO Collections (name, date_of_issue) VALUES ('Клубная Музыка', '2022-1-1');
INSERT INTO Collections (name, date_of_issue) VALUES ('Музыка для тренировок', '2015-1-1');
INSERT INTO Collections (name, date_of_issue) VALUES ('Разное', '2024-1-1');

INSERT INTO Collection_track (collection_id, track_id) VALUES (1,3);
INSERT INTO Collection_track (collection_id, track_id) VALUES (1,4);

INSERT INTO Collection_track (collection_id, track_id) VALUES (2,6);
INSERT INTO Collection_track (collection_id, track_id) VALUES (2,7);
INSERT INTO Collection_track (collection_id, track_id) VALUES (2,8);

INSERT INTO Collection_track (collection_id, track_id) VALUES (3,12);
INSERT INTO Collection_track (collection_id, track_id) VALUES (3,14);
INSERT INTO Collection_track (collection_id, track_id) VALUES (3,18);
INSERT INTO Collection_track (collection_id, track_id) VALUES (3,2);

INSERT INTO Collection_track (collection_id, track_id) VALUES (4,1);
INSERT INTO Collection_track (collection_id, track_id) VALUES (4,8);
INSERT INTO Collection_track (collection_id, track_id) VALUES (4,13);
INSERT INTO Collection_track (collection_id, track_id) VALUES (4,12);
INSERT INTO Collection_track (collection_id, track_id) VALUES (4,4);

