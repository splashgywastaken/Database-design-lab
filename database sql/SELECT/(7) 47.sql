-- Выбрать ролик, который демонстрируется чаще других
WITH ads_quantity AS (
	SELECT ad_video_id, count(*) as times_shown FROM show_ads
	GROUP BY ad_video_id
	ORDER BY ad_video_id
)

SELECT av.*, times_shown as "Количество показов" from ad_videos av
JOIN ads_quantity aq ON aq.ad_video_id = av.ad_video_id
WHERE av.ad_video_id IN
	(
		SELECT ad_video_id FROM ads_quantity
		WHERE times_shown = (SELECT MAX(times_shown) FROM ads_quantity)
	)