-- Выбрать название фильма с наименьшей ценой лицензии из фильмов,
-- которые показывали более N раз
WITH show_count as (
	SELECT COUNT(*) as times_shown, movie_id FROM show
	GROUP BY movie_id
)
SELECT m.movie_name, sc.times_shown, m.movie_license_price FROM movie m
JOIN show_count sc ON m.movie_id = sc.movie_id
WHERE m.movie_license_price = 
(
	SELECT min(m.movie_license_price) FROM movie m
	WHERE m.movie_id IN (SELECT movie_id FROM show_count WHERE times_shown > 1)
)