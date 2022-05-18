-- Выбрать id ролика, который показывался перед каждым сеансом
-- в течение последнего месяца
WITH RECURSIVE last_month_dates AS(
    SELECT 30 code, now() lm_date
    UNION ALL
    SELECT code-1, lm_date - interval '1 day' FROM last_month_dates
    WHERE code-1 != 0
),
ad_videos_count AS(
	SELECT adv.ad_video_id, COUNT(*) as times_shown FROM show s
	JOIN show_ads sa on s.show_id = sa.show_id
	JOIN ad_videos adv on adv.ad_video_id = sa.ad_video_id
	WHERE s.show_start_time::date IN (SELECT lm_date::date FROM last_month_dates WHERE lm_date::date != '2022-05-01')
	GROUP BY adv.ad_video_id
	ORDER BY ad_video_id ASC
),
total_shows_count AS(
	SELECT count(s.show_id) as times_shown FROM show s
	WHERE s.show_start_time::date IN (SELECT lm_date::date FROM last_month_dates WHERE lm_date::date != '2022-05-01')
)
SELECT ad_video_id FROM ad_videos_count avc
WHERE avc.times_shown = (SELECT times_shown FROM total_shows_count)

