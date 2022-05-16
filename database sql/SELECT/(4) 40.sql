-- Выбрать для каждого сеанса, который начинается сегодня, общее
-- количество мест в зале,
-- количество проданных мест, 
-- количество свободных мест, 
-- суммарное количество мест по всем залам
WITH
today_shows AS (
	SELECT s.show_id, sr.seats_rows_id FROM show s 
	JOIN seats_rows sr ON s.cinema_room_number = sr.cinema_room_number
	WHERE s.show_start_time::date = '2022-05-01'
),
free_seats_data AS (
	SELECT show_id, count(*) as seats_count FROM 
	(SELECT * FROM today_shows
	EXCEPT SELECT s.show_id, td.seats_rows_id FROM show s
	JOIN tickets_data td ON td.show_id = s.show_id
	WHERE td.ticket_payment_info = 'куплен') as seats_data
	GROUP BY show_id
),
sold_seats_data AS (
	SELECT show_id, count(*) as seats_count  FROM 
	(SELECT * FROM today_shows
	INTERSECT SELECT s.show_id, td.seats_rows_id FROM show s
	JOIN tickets_data td ON td.show_id = s.show_id
	WHERE td.ticket_payment_info = 'куплен') as seats_data
	GROUP BY show_id
),
total_seats_data AS (
	SELECT show_id, count(*) as seats_count FROM 
	(SELECT * FROM today_shows) as seats_data
	GROUP BY show_id
),
zeroed_sold_seats_data AS (
	SELECT seats_data.show_id, 
	(CASE 
		WHEN show_id IN (SELECT show_id FROM sold_seats_data) 
			THEN (SELECT seats_count FROM sold_seats_data _ssd WHERE _ssd.show_id = seats_data.show_id)
		ELSE '0'
	 END)
	as seats_count  FROM 
	(SELECT * FROM free_seats_data) as seats_data
	GROUP BY show_id
)
SELECT 
	fsd.show_id as "Номер сеанса", 
	tsd.seats_count  as "Количество мест в зале",
	zssd.seats_count as "Количество проданных мест",
	fsd.seats_count as "Количество свободных мест",
	CASE 
		WHEN fsd.show_id = 1 THEN (
			SELECT count(cinema_room_number) * seats_count FROM
			(
				SELECT cinema_room_number, count(*) as seats_count FROM 
				(
					SELECT DISTINCT s.cinema_room_number, sr.seats_rows_id FROM show s 
					JOIN seats_rows sr ON s.cinema_room_number = sr.cinema_room_number
					WHERE s.show_start_time::date = '2022-05-01'
				) as seats_data
				GROUP BY cinema_room_number
			) as cinema_room_seats_data
			GROUP BY seats_count
		)
		ELSE NULL
	END
	as "Количество мест по всем кинозалам"
FROM 
	free_seats_data fsd,
	zeroed_sold_seats_data zssd, 
	total_seats_data tsd
WHERE zssd.show_id = fsd.show_id AND tsd.show_id = zssd.show_id
