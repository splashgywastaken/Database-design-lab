-- Выбрать фильмы, демонстрируемые сегодня без предварительного показа рекламных роликов
SELECT DISTINCT m.* FROM movie m
JOIN show s ON s.movie_id = m.movie_id
JOIN show_ads sads ON sads.show_id = s.show_id
WHERE s.show_start_time::date = '2022-5-1' -- Подставить сюда фукнцию now()::timestamp::date
AND sads.ad_video_id NOT IN (SELECT ad_video_id FROM ad_videos WHERE ad_type = 'п')