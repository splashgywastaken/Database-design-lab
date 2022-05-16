SELECT sr.seats_rows_id, sr.row_number, sr.seat_number FROM tickets_data td
JOIN seats_rows sr ON sr.seats_rows_id = td.seats_rows_id
	WHERE td.show_id = 1 AND td.ticket_payment_info = 'куплен'
	ORDER BY sr.seat_number, sr.row_number