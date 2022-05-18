-- Вывести слова “Есть фильмы с одинаковым названием” если есть
-- фильмы  с  совпадающим  названием  и  вывести  “Фильмы
-- с совпадающими названиями отсутствуют”, если таких фильмов нет.
WITH movie_list AS (
	SELECT movie_name, COUNT(*) as movie_count FROM movie
	GROUP BY movie_name
	HAVING count(*) > 1
),
movies_number AS (
	SELECT COUNT(movie_name) as num FROM movie
)

SELECT 
	CASE 
		WHEN 
			(SELECT count(movie_count) as num FROM movie_list) >= 1
			THEN 'Есть фильмы с одинаковым названием'
		ELSE 
			'Фильмы с совпадающими названиями отсутствуют'
	END AS Result
FROM movies_number