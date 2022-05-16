-- Вывести слова “Есть фильмы с одинаковым названием” если есть
-- фильмы  с  совпадающим  названием  и  вывести  “Фильмы
-- с совпадающими названиями отсутствуют”, если таких фильмов нет.
WITH movie_list AS (
	SELECT movie_id, COUNT(*) movie_count FROM movie
	GROUP BY movie_id
),
movies_number AS (
	SELECT COUNT(movie_id) as num FROM movie
)

SELECT 
	CASE 
		WHEN 
			(SELECT num FROM movies_number) 
			= (SELECT sum(movie_count) as num FROM movie_list)
			THEN 'Фильмы с совпадающими названиями отсутствуют'
		ELSE 
			'Есть фильмы с одинаковым названием'
	END AS Result
FROM movies_number