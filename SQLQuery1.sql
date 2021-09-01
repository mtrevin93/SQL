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

SELECT a.ArtistName, g.name
FROM Album Al
Join Artist a on Al.ArtistId = a.Id
Join genre g on Al.GenreId = g.Id
WHERE g.Name = 'Jazz' OR g.Name = 'Rock';