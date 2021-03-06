--STEP 1:
--SELECT * 
--FROM Genre

--STEP 2:
--SELECT *
--FROM Artist a
--ORDER BY a.ArtistName;

--STEP 3:
--SELECT S.Title, a.ArtistName
--FROM Song s
--JOIN Artist a on s.ArtistId = a.Id

--STEP 4:
--SELECT a.ArtistName, g.name
--FROM Album al
--Join Artist a on al.ArtistId = a.Id
--Join Genre g on al.GenreId = g.Id
--WHERE g.name = 'Soul';

--STEP 5:
--SELECT a.ArtistName, g.name
--FROM Album Al
--Join Artist a on Al.ArtistId = a.Id
--Join genre g on Al.GenreId = g.Id
--WHERE g.Name = 'Jazz' OR g.Name = 'Rock';

--STEP 6:
--SELECT al.Title
--FROM Song s
--RIGHT JOIN Album al
--ON s.AlbumId = al.Id
--WHERE s.AlbumId IS NULL;

--STEP 7:
--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Mariya Takeuchi', 1978)

--STEP 8:
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Variety', 24/04/1984, 2534, 'Moon Records', 1002, 7);

--STEP 9:
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Plastic Love', 291, 11/19/1984, 7, 1002, 1004); 

----STEP 10:
--SELECT al.Title, s.Title, a.ArtistName
--FROM Album al
--JOIN Artist a
--	ON al.ArtistId = a.Id
--JOIN Song s
--	ON s.AlbumId = al.Id
--	WHERE s.Title = 'Plastic Love';

--update Song
--set ReleaseDate = '04/25/1984'
--WHERE Id = 1002;

--STEP 11:
--SELECT COUNT(Song.Id), al.Title
--	FROM SONG
--JOIN Album al
--	ON Song.AlbumId = al.Id
--GROUP BY al.Title

--STEP 12:
--SELECT COUNT(s.Id), a.ArtistName
--	FROM Album al
--JOIN Song s 
--	ON s.albumId = al.Id
--JOIN Artist a
--	On s.artistId = a.Id
--GROUP BY a.ArtistName;

--STEP 13: 
--SELECT COUNT(s.Id), g.Name
--FROM Song s
--JOIN Genre g
--	ON s.GenreId = g.Id
--GROUP BY g.Name;

--STEP 14:
--SELECT COUNT(al.Label), a.ArtistName
--FROM Album al
--JOIN Artist a
--	ON al.ArtistId = a.Id
--GROUP BY a.ArtistName
--HAVING COUNT(al.Label) >= 2;

--STEP 15:
--SELECT al.Title, al.AlbumLength
--FROM Album al
--WHERE al.AlbumLength = (SELECT MAX(al.AlbumLength) FROM Album al);

--STEP 16:
--SELECT s.Title, s.SongLength 
--FROM Song s
--WHERE s.SongLength = (SELECT MAX(s.SongLength) FROM Song s);

STEP 17:
SELECT s.Title as SongTitle, s.SongLength, al.Title as AlbumTitle
FROM Song s
JOIN Album al
	ON s.AlbumId = al.Id
WHERE s.SongLength = (SELECT MAX(s.SongLength) FROM Song s);
