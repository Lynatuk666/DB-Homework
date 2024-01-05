--2.1
SELECT name, duration FROM Tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);
--2.2
SELECT name, duration FROM Tracks
WHERE duration > '0:03:30';
--2.3
SELECT name FROM Collections
WHERE date_of_issue BETWEEN '2015-1-1' and '2020-1-1';
--2.4
SELECT name FROM musicians
WHERE name NOT LIKE '% %';
--2.5
SELECT name FROM Tracks
WHERE name LIKE '% my %' OR name LIKE '% мой %';

--3.1
SELECT name, genre_id, COUNT(*) 
FROM musicians_genres
JOIN genres ON musicians_genres.genre_id = genres.id
GROUP BY genre_id, genres.name;
--3.2
SELECT albums.name, album_id, COUNT(*) 
FROM albums
JOIN tracks on albums.id = tracks.album_id
WHERE year_of_issue BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY albums.name, album_id;
--3.3
SELECT albums.name, AVG(duration)  
FROM tracks
JOIN albums on tracks.album_id = albums.id
GROUP BY albums.name
--3.4
SELECT musicians.name 
FROM musicians
JOIN musicians_albums AS m_a on musicians.id = m_a.musician_id 
JOIN albums on m_a.album_id = albums.id
WHERE EXTRACT(YEAR FROM year_of_issue) != 2020
GROUP BY musicians.name
--3.5
select collections.name
FROM tracks
JOIN collection_track on tracks.id = collection_track.track_id
JOIN collections on collection_track.collection_id = collections.id
JOIN Albums on tracks.album_id = albums.id
JOIN musicians_albums as m_a on albums.id = m_a.album_id
JOIN musicians on m_a.musician_id = musicians.id
where musicians.name = 'Noize MC'
GROUP BY collections.name

--4.1
SELECT albums.name
FROM albums
JOIN musicians_albums AS m_a ON albums.id = m_a.album_id 
JOIN musicians ON m_a.musician_id = musicians.id
JOIN musicians_genres AS m_g ON musicians.id = m_g.musician_id
JOIN genres ON m_g.genre_id = genres.id
GROUP BY Albums.name
HAVING count(*) > 1
--4.2
SELECT tracks.name
FROM tracks
FULL OUTER JOIN collection_track as c_t on tracks.id = c_t.track_id
Where collection_id is null
--4.3
SELECT musicians.name
FROM musicians
JOIN musicians_albums AS m_a ON musicians.id = m_a.musician_id 
JOIN albums ON m_a.album_id = albums.id
JOIN tracks on albums.id = tracks.album_id
Where duration = (SELECT MIN(duration) FROM tracks)
--4.4
SELECT name
FROM (
		SELECT albums.name,  COUNT(*) as quantity_of_tracks
    FROM albums 
    JOIN tracks on albums.id = tracks.album_id
    Group by albums.name 
     )
where quantity_of_tracks = (
	    select Min(quantity_of_tracks) 
	    FROM (
			SELECT albums.name,  COUNT(*) as quantity_of_tracks
            FROM albums 
            JOIN tracks on albums.id = tracks.album_id
            Group by albums.name 
		     ) 
                            )
					
