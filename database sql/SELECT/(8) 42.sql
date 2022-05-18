-- Выбрать компании короткометражных фильмов, чьи полнометражные
-- фильмы демонстрируются только по субботам и воскресеньям

WITH short_length_studios AS (
	SELECT s.studio_id, s.studio_name FROM studios s
	JOIN movies_studios ms ON ms.studio_id = s.studio_id
	JOIN movie m ON ms.movie_id = m.movie_id
	WHERE movie_length < '03:00:00' -- Сюда надо подставить время для короткометражных фильмов
	GROUP BY s.studio_name, s.studio_id
	ORDER BY s.studio_name ASC
),
long_length_studios AS (
	SELECT s.studio_id, s.studio_name FROM studios s
	JOIN movies_studios ms ON ms.studio_id = s.studio_id
	JOIN movie m ON ms.movie_id = m.movie_id
	WHERE movie_length > '03:00:00' -- Сюда надо подставить время для короткометражных фильмов
	GROUP BY s.studio_name, s.studio_id
	ORDER BY s.studio_name ASC
)

SELECT sl_studios.studio_id, sl_studios.studio_name FROM (
	SELECT * FROM short_length_studios
	INTERSECT
	SELECT * FROM long_length_studios
) sl_studios
WHERE 
	studio_id NOT IN
(
			SELECT lls.studio_id FROM  long_length_studios lls 
			JOIN movies_studios ms ON ms.studio_id = lls.studio_id
			JOIN movie m ON m.movie_id = ms.movie_id
			JOIN show s ON s.movie_id = ms.movie_id 
			WHERE (SELECT EXTRACT(ISODOW FROM s.show_start_time::timestamp::date)) BETWEEN 1 AND 5
			) 