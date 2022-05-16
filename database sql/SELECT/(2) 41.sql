-- Выбрать кинокомпании, у которых более N фильмов, и которые
-- не имеют короткометражных фильмов

-- Выбрать список кинокомпаний с перечислением их фильмов:
-- SELECT s.studio_name, m.movie_name FROM studios s
-- JOIN movies_studios ms on ms.studio_id = s.studio_id
-- JOIN movie m on ms.movie_id = m.movie_id

-- Выбрать список кинокомпаний не имеющих короткометражек с перечислением их фильмов:
-- SELECT s.studio_name, m.movie_name FROM studios s
-- JOIN movies_studios ms on ms.studio_id = s.studio_id
-- JOIN movie m on ms.movie_id = m.movie_id
-- WHERE movie_length > '03:00:00'

-- Выбираем список кинокомпаний не имеющих короткометражек с перечислением количества их фильмов:
-- SELECT s.studio_name, COUNT(m.movie_name) FROM studios s
-- JOIN movies_studios ms on ms.studio_id = s.studio_id
-- JOIN movie m on ms.movie_id = m.movie_id
-- WHERE movie_length > '02:00:00'
-- GROUP BY s.studio_name

-- Выбираем список кинокомпаний не имеющих короткометражек и у которых более N фильмов:
SELECT s.studio_name FROM studios s
JOIN movies_studios ms on ms.studio_id = s.studio_id
JOIN movie m on ms.movie_id = m.movie_id
WHERE movie_length > '02:00:00' -- Сюда надо подставить время для короткометражных фильмов
GROUP BY s.studio_name
HAVING COUNT(m.movie_name) > 1 -- Сюда можно подставить количество фильмов - N 