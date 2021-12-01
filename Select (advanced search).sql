SELECT title, Year_of_issue FROM Album
WHERE Year_of_issue >= 2018;

SELECT Track_title, duration  FROM Track
WHERE duration = (SELECT MAX(duration) FROM Track);

SELECT Track_title, duration FROM Track
WHERE duration >= 210
LIMIT 15 ;

SELECT Title, Year_of_issue FROM Collection
WHERE Year_of_issue BETWEEN 2018 AND 2020;

SELECT First_name, Last_name FROM Executor
WHERE First_name = 'None' OR Last_name = 'None';

SELECT Track_title FROM Track
WHERE Track_title LIKE '%%Мой%%';

SELECT Track_title FROM Track
WHERE Track_title LIKE '%%My%%'
LIMIT 15;

--Домашнее задание к лекции «Группировки, выборки из нескольких таблиц»

--количество исполнителей в каждом жанре;

SELECT Genre_title gt, COUNT(Executor_ID) e FROM Musical_genre
JOIN Musical_genre_Executor ON Musical_genre.Genre_ID = Musical_genre_Executor.Genre_ID
GROUP BY gt
ORDER BY e DESC;

--количество треков, вошедших в альбомы 2019-2020 годов;

SELECT Title, Year_of_issue, COUNT(Track_ID) c FROM Album
JOIN Track ON Album.Album_ID = Track.Album_ID
WHERE Year_of_issue BETWEEN 2019 AND 2020
GROUP BY Title, Year_of_issue
ORDER BY c DESC;

--средняя продолжительность треков по каждому альбому;

SELECT Album.Title, AVG(duration) FROM Album
JOIN Track ON Album.Album_ID = Track.Album_ID
GROUP BY Album.Title;

--все исполнители, которые не выпустили альбомы в 2020 году;

SELECT DISTINCT First_name, Last_name FROM Executor
WHERE First_name not in (
SELECT DISTINCT First_name FROM Executor
JOIN Joint_album ON Executor.Executor_ID = Joint_album.Executor_ID
JOIN Album ON Joint_album.Album_ID = Album.Album_ID
WHERE Album.year_of_issue = 2020)
ORDER BY First_name DESC;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);

SELECT DISTINCT Collection.Title ct FROM Collection
JOIN Collection_Tracks ON Collection.Collection_ID = Collection_Tracks.Collection_ID
JOIN Track ON Collection_Tracks.Track_ID = Track.Track_ID
JOIN Album ON Track.Album_ID = Album.Album_ID
JOIN Joint_album ON Album.Album_ID = Joint_album.Album_ID
JOIN Executor ON Joint_album.Executor_ID = Executor.Executor_ID
WHERE Executor.first_name like '%%Alan%%'
ORDER BY ct DESC;

--название альбомов, в которых присутствуют исполнители более 1 жанра;

SELECT DISTINCT Album.title, COUNT(DISTINCT genre_title) FROM Album
JOIN joint_album ja ON Album.album_id = ja.album_id
JOIN executor e ON ja.Executor_ID = e.executor_id 
JOIN musical_genre_executor mge ON e.executor_id = mge.executor_id
JOIN musical_genre mg ON mge.genre_id = mg.genre_id
GROUP BY Album.title
HAVING COUNT(DISTINCT genre_title) > 1
order by COUNT(DISTINCT genre_title) DESC;

--наименование треков, которые не входят в сборники;

SELECT track_title FROM track
LEFT JOIN collection_tracks ON track.track_id = collection_tracks.track_id
WHERE collection_tracks.track_id is NULL 
ORDER BY track_title DESC
LIMIT 20;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

SELECT DISTINCT First_name, Last_name, duration FROM track
JOIN Album ON Track.Album_ID = Album.Album_ID
JOIN Joint_album ON Album.Album_ID = Joint_album.Album_ID
JOIN Executor ON Joint_album.Executor_ID = Executor.Executor_ID
GROUP BY First_name, Last_name, duration 
HAVING duration = (SELECT min(duration) FROM Track)
ORDER BY First_name, Last_name;

--название альбомов, содержащих наименьшее количество треков.

SELECT DISTINCT album.title FROM album
LEFT JOIN track ON album.album_id = track.album_id
WHERE track.album_id in (
SELECT album_id FROM track
GROUP BY album_id
HAVING COUNT(track_id) = (
SELECT COUNT(track_id) FROM track
GROUP BY album_id
ORDER BY COUNT
LIMIT 1))
ORDER BY album.title;
