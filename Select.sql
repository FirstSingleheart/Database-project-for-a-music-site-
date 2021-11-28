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