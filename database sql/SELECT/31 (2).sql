-- Выбрать свободные места на конкретный сеанс
SELECT DISTINCT sr.row_number, sr.seat_number FROM show s
JOIN seats_rows sr ON s.cinema_room_number = sr.cinema_room_number
-- номер сеанса
WHERE s.show_id = 1 AND sr.seats_rows_id NOT IN (
	SELECT seats_rows_id FROM tickets_data td
	WHERE td.show_id = 1 AND td.ticket_payment_info = 'куплен'
)
ORDER BY sr.row_number ASC, sr.seat_number ASC