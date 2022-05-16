-- Выбрать компании короткометражных фильмов, чьи полнометражные
-- фильмы демонстрируются только по субботам и воскресеньям

WITH short_length_studios AS (
	SELECT s.studio_id, s.studio_name FROM studios s
	JOIN movies_studios ms ON ms.studio_id = s.studio_id
	JOIN movie m ON ms.movie_id = m.movie_id
	WHERE movie_length < '03:00:00' -- Сюда надо подставить время для короткометражных фильмов
	GROUP BY s.studio_name, s.studio_id
	ORDER BY s.studio_name ASC
)

SELECT 
	sls.studio_name as result
FROM short_length_studios sls
	JOIN movies_studios ms ON sls.studio_id = ms.studio_id
	JOIN movie m ON ms.movie_id = m.movie_id
	JOIN show s ON m.movie_id = s.movie_id
		WHERE m.movie_length > '03:00:00' -- Сюда надо подставить время для короткометражных фильмов
  		AND (SELECT EXTRACT(ISODOW FROM s.show_start_time::timestamp::date)) BETWEEN 6 AND 7
GROUP BY sls.studio_name