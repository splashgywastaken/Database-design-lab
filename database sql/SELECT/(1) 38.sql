-- Выбрать название фильма, который демонстрировался во всех залах
-- Для начала выписать список всех фильмов, которые демонстрировались во всех залах, без учета повторений
WITH movies_list as (
	SELECT s.movie_id, s.cinema_room_number FROM movie m 
	JOIN show s on s.movie_id = m.movie_id
	GROUP BY s.movie_id, s.cinema_room_number
	ORDER BY s.movie_id ASC, s.cinema_room_number ASC
)
SELECT movie_name FROM movie
WHERE movie_id IN 
	(
		SELECT movie_id FROM movies_list
		GROUP BY movie_id
		HAVING  count(cinema_room_number) = (
				SELECT COUNT(cinema_room_number) as rooms_count FROM cinema_room
			)
	)