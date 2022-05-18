

-- фильмы
insert into movie (movie_id, movie_name, movie_length, movie_license_price, movie_rental_days, movie_age_restriction)
values (1, 'Зеленая миля', '3:09:00', 75000, 21, '16+');
insert into movie (movie_id, movie_name, movie_length, movie_license_price, movie_rental_days, movie_age_restriction)
values (2, 'Побег из Шоушенка', '2:22:00', 75000, 21, '16+');
insert into movie (movie_id, movie_name, movie_length, movie_license_price, movie_rental_days, movie_age_restriction)
values (3, 'Список Шиндлера', '3:15:00', 60000, 21, '16+');
insert into movie (movie_id, movie_name, movie_length, movie_license_price, movie_rental_days, movie_age_restriction) 
values (4, 'Властелин колец: Возвращение короля', '3:21:00', 75000, 21, '12+');
insert into movie (movie_id, movie_name, movie_length, movie_license_price, movie_rental_days, movie_age_restriction) 
values (5, 'Интерстеллар', '02:49:00', 75000, 21, '16+');

-- люди
insert into peoples (people_id, people_name) 
values (1, 'Том Хэнкс');
insert into peoples (people_id, people_name) 
values (2, 'Фрэнк Дарабонт');
insert into peoples (people_id, people_name)
values (3, 'Тим Роббинс');
insert into peoples (people_id, people_name)
values (4, 'Морган Фриман');
insert into peoples (people_id, people_name)
values (5, 'Лиам Нисон');
insert into peoples (people_id, people_name)
values (6, 'Бен Кингсли');
insert into peoples (people_id, people_name)
values (7, 'Стивен Спилберг');
insert into peoples (people_id, people_name)
values (8, 'Элайджа Вуд');
insert into peoples (people_id, people_name)
values (9, 'Вигго Мортенсен');
insert into peoples (people_id, people_name)
values (10, 'Питер Джексон');
insert into peoples (people_id, people_name)
values (11, 'Мэттью МакКонахи');
insert into peoples (people_id, people_name)
values (12, 'Кристофер Нолан');


-- страны
insert into countries (country_id, country_name) 
values (1, 'США');
insert into countries (country_id, country_name) 
values (2, 'Новая Зенландия');
insert into countries (country_id, country_name)
values (3, 'Великобритания');
insert into countries (country_id, country_name)
values (4, 'Канада');


-- жанры
insert into genres (genre_id, genre_name) 
values (1, 'драма');
insert into genres (genre_id, genre_name) 
values (2, 'криминал');
insert into genres (genre_id, genre_name) 
values (3, 'биография');
insert into genres (genre_id, genre_name) 
values (4, 'история');
insert into genres (genre_id, genre_name) 
values (5, 'военный');
insert into genres (genre_id, genre_name) 
values (6, 'фентэзи');
insert into genres (genre_id, genre_name) 
values (7, 'приключения');
insert into genres (genre_id, genre_name) 
values (8, 'фантастика');


-- киностудии
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (1, 'Castle Rock Entertainment', 1987);
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (2, 'Darkwoods Productions', 1986);
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (3, 'Warner Bros. Pictures', 1903);
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (4, 'Amblin Entertainment', 1981);
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (5, 'Universal pictures', 1912);
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (6, 'New Line Cinema', 1967);
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (7, 'Middle-earth Enterprises', 1976);
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (8, 'WingNut Films', 1987);
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (9, 'Legendary pictures', 2000);
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (10, 'Linda Obst Productions', 1989);
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (11, 'Paramount Pictures', 1912);
insert into studios (studio_id, studio_name, studio_year_of_founding) 
values (12, 'Syncopy Films', 2001);


-- связь фильмы - люди
-- зеленая миля
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role) 
values (1, 1, 1, 'главный актер');
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role) 
values (2, 1, 2, 'режиссер');

-- побег из шоушенка 
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role) 
values (3, 2, 3, 'главный актер');
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role) 
values (4, 2, 4, 'главный актер');
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role) 
values (2, 2, 5, 'режиссер');

-- список шиндлера
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role) 
values (5, 3, 6, 'главный актер');
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role) 
values (6, 3, 7, 'актер второй роли');
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role) 
values (7, 3, 8, 'режиссер');

-- Властелин колец: Возвращение короля
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role) 
values (9, 4, 9, 'главный актер');
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role) 
values (10, 4, 10, 'режиссер');

-- Интерстеллар
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role)
values (11, 5, 11, 'главный актер');
insert into movies_people (people_id, movie_id, movies_people_id, movie_people_role)
values (11, 5, 12, 'режиссер');

-- связь фильмы - страны
-- зеленая миля
insert into movies_countries (country_id, movie_id)
values (1, 1);

-- побег из шоушенка
insert into movies_countries (country_id, movie_id)
values (1, 2);

-- список шиндлера 
insert into movies_countries (country_id, movie_id)
values (1, 3);

-- Властелин колец: Возвращение короля
insert into movies_countries (country_id, movie_id)
values (1, 4);
insert into movies_countries (country_id, movie_id)
values (2, 4);

-- Интерстеллар
insert into movies_countries (country_id, movie_id)
values (1, 5);
insert into movies_countries (country_id, movie_id)
values (3, 5);
insert into movies_countries (country_id, movie_id)
values (4, 5);


-- связь фильмы - жанры
-- зеленая миля
insert into movies_genres (genre_id, movie_id) 
values (1, 1);
insert into movies_genres (genre_id, movie_id) 
values (2, 1);

-- побег из шоушенка
insert into movies_genres (genre_id, movie_id) 
values (1, 2);

-- список шиндлера
insert into movies_genres (genre_id, movie_id) 
values (1, 3);
insert into movies_genres (genre_id, movie_id) 
values (3, 3);
insert into movies_genres (genre_id, movie_id) 
values (4, 3);
insert into movies_genres (genre_id, movie_id) 
values (5, 3);

-- Властелин колец: Возвращение короля
insert into movies_genres (genre_id, movie_id) 
values (6, 4);
insert into movies_genres (genre_id, movie_id) 
values (7, 4);
insert into movies_genres (genre_id, movie_id) 
values (1, 4);

-- Интерстеллар
insert into movies_genres (genre_id, movie_id) 
values (1, 5);
insert into movies_genres (genre_id, movie_id) 
values (7, 5);
insert into movies_genres (genre_id, movie_id) 
values (8, 5);

-- связь фильмы - киностудии
-- зеленая миля
insert into movies_studios (movie_id, studio_id, movies_studios_id) 
values (1, 1, 1);
insert into movies_studios (movie_id, studio_id, movies_studios_id) 
values (1, 2, 2);
insert into movies_studios (movie_id, studio_id, movies_studios_id) 
values (1, 3, 3);

-- побег из шоушенка
insert into movies_studios (movie_id, studio_id, movies_studios_id) 
values (2, 1, 4);

-- список шиндлера
insert into movies_studios (movie_id, studio_id, movies_studios_id)  
values (3, 4, 5);
insert into movies_studios (movie_id, studio_id, movies_studios_id) 
values (3, 5, 6);

-- Властелин колец: Возвращение короля
insert into movies_studios (movie_id, studio_id, movies_studios_id) 
values (4, 6, 7);
insert into movies_studios (movie_id, studio_id, movies_studios_id)  
values (4, 7, 8);
insert into movies_studios (movie_id, studio_id, movies_studios_id) 
values (4, 8, 9);

-- Интерстеллар
insert into movies_studios (movie_id, studio_id, movies_studios_id)  
values (5, 9, 10);
insert into movies_studios (movie_id, studio_id, movies_studios_id) 
values (5, 10, 11);
insert into movies_studios (movie_id, studio_id, movies_studios_id) 
values (5, 11, 12);
insert into movies_studios (movie_id, studio_id, movies_studios_id) 
values (5, 12, 13);


-- кинозалы
-- типы: 1 - малый кинозал, 2 - большой кинозал
insert into cinema_room (cinema_room_number, cinema_room_type, cinema_room_projector_type) 
values (1, 1, '2D проектор');
insert into cinema_room (cinema_room_number, cinema_room_type, cinema_room_projector_type) 
values (2, 1, '3D проектор');
insert into cinema_room (cinema_room_number, cinema_room_type, cinema_room_projector_type) 
values (3, 2, '2D проектор');
insert into cinema_room (cinema_room_number, cinema_room_type, cinema_room_projector_type) 
values (4, 2, '3D проектор');


-- информация о местах
-- данные для первого кинозала
-- 1 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (1, 1, 1, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (2, 1, 2, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (3, 1, 3, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (4, 1, 4, 1, 1);

-- 2 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (5, 1, 1, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (6, 1, 2, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (7, 1, 3, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (8, 1, 4, 2, 1);

-- 3 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (9, 1, 1, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (10, 1, 2, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (11, 1, 3, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (12, 1, 4, 3, 1.25);

-- 4 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (13, 1, 1, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (14, 1, 2, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (15, 1, 3, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (16, 1, 4, 4, 1);

-- 5 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (17, 1, 1, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (18, 1, 2, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (19, 1, 3, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (20, 1, 4, 5, 1);

-- данные для второго кинозала
-- 1 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (21, 2, 1, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (22, 2, 2, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (23, 2, 3, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (24, 2, 4, 1, 1);

-- 2 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (25, 2, 1, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (26, 2, 2, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (27, 2, 3, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (28, 2, 4, 2, 1);

-- 3 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (29, 2, 1, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (30, 2, 2, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (31, 2, 3, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (32, 2, 4, 3, 1.25);

-- 4 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (33, 2, 1, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (34, 2, 2, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (35, 2, 3, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (36, 2, 4, 4, 1);

-- 5 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (37, 2, 1, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (38, 2, 2, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (39, 2, 3, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (40, 2, 4, 5, 1);

-- данные для третьего кинозала
-- 1 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (41, 3, 1, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (42, 3, 2, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (43, 3, 3, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (44, 3, 4, 1, 1);

-- 2 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (45, 3, 1, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (46, 3, 2, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (47, 3, 3, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (48, 3, 4, 2, 1);

-- 3 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (49, 3, 1, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (50, 3, 2, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (51, 3, 3, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (52, 3, 4, 3, 1.25);

-- 4 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (53, 3, 1, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (54, 3, 2, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (55, 3, 3, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (56, 3, 4, 4, 1);

-- 5 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (57, 3, 1, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (58, 3, 2, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (59, 3, 3, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (60, 3, 4, 5, 1);

-- данные для четвертого кинозала
-- 1 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (61, 4, 1, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (62, 4, 2, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (63, 4, 3, 1, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (64, 4, 4, 1, 1);

-- 2 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (65, 4, 1, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (66, 4, 2, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (67, 4, 3, 2, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (68, 4, 4, 2, 1);

-- 3 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (69, 4, 1, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (70, 4, 2, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (71, 4, 3, 3, 1.25);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (72, 4, 4, 3, 1.25);

-- 4 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (73, 4, 1, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (74, 4, 2, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (75, 4, 3, 4, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (76, 4, 4, 4, 1);

-- 5 ряд
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (77, 4, 1, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (78, 4, 2, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (79, 4, 3, 5, 1);
insert into seats_rows (seats_rows_id, cinema_room_number, seat_number, row_number, seat_row_price_coefficient)
values (80, 4, 4, 5, 1);


insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (20, 1, 5, '2022-4-29 16:20:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (21, 1, 5, '2022-4-29 13:20:00');
insert into show_ads (ad_video_id, show_id) values (2, 20);
insert into show_ads (ad_video_id, show_id) values (2, 21);
-- 1147 Productions 3 4 
insert into show_ads (ad_video_id, show_id) values (3, 20);


-- кинопоказы
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (1, 1, 5, '2022-5-1 16:20:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (2, 1, 5, '2022-5-1 13:20:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (3, 1, 2, '2022-5-1 19:20:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (4, 1, 3, '2022-5-1 9:50:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (5, 1, 4, '2022-5-1 6:20:00');

insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (6, 2, 5, '2022-5-1 17:20:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (7, 2, 5, '2022-5-1 14:20:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (8, 2, 2, '2022-5-1 19:20:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (9, 2, 3, '2022-5-1 10:20:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (10, 2, 1, '2022-5-1 7:00:00');

insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (11, 3, 5, '2022-5-1 15:20:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (12, 3, 5, '2022-5-1 18:20:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (13, 3, 2, '2022-5-1 13:50:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (14, 3, 3, '2022-5-1 10:00:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (15, 3, 4, '2022-5-1 6:30:00');

insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (16, 4, 5, '2022-5-1 16:00:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (17, 4, 2, '2022-5-1 19:00:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (18, 4, 3, '2022-5-1 12:30:00');
insert into show (show_id, cinema_room_number, movie_id, show_start_time)
values (19, 4, 1, '2022-5-1 9:00:00');


-- данные о билетах
-- show 1
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (1, 1, 6, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (2, 1, 7, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (3, 1, 9, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (4, 1, 10, 'куплен', 10);
-- show 2
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (5, 2, 1, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (6, 2, 6, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (7, 2, 7, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (8, 2, 10, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (9, 2, 11, 'куплен', 10);
-- show 3
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (10, 3, 6, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (11, 3, 7, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (12, 3, 14, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (13, 3, 15, 'куплен', 10);
-- show 4
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (14, 4, 6, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (15, 4, 7, 'куплен', 10);
-- show 5
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (16, 5, 6, 'куплен', 10);
-- show 6
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (17, 6, 26, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (18, 6, 27, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (19, 6, 30, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (20, 6, 31, 'куплен', 10);
-- show 7
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (21, 7, 26, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (22, 7, 27, 'куплен', 10);
-- show 8
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (23, 8, 34, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (24, 8, 35, 'куплен', 10);
-- show 9
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (25, 9, 22, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (26, 9, 23, 'куплен', 10);
-- show 10
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (27, 10, 26, 'куплен', 10);
insert into tickets_data (ticket_id, show_id, seats_rows_id, ticket_payment_info, ticket_price) 
values (28, 10, 27, 'куплен', 10);

-- данные об сммщике
insert into advertiser_data (advertiser_id, advertiser_name, advertiser_phone_number, advertiser_email, advertiser_itn, advertiser_ogrnip, advertiser_kpp, advertiser_address)  
values (
        1,
        'PEPSI CO', 
        '8-800-500-77-37', 
        'contact.russia@pepsico.com', 
        '7705034202', 
        NULL, 
        '504401001', 
        'Московская Область, г. Солнечногорск, тер Свободной Экономической Зоны Шерризон, стр. 1'
    );
insert into advertiser_data (advertiser_id, advertiser_name, advertiser_phone_number, advertiser_email, advertiser_itn, advertiser_ogrnip, advertiser_kpp, advertiser_address)  
values (
        2,
        '1147 Productions', 
        '8-916-487-49-14', 
        'hello@1147.pro', 
        '7718262943', 
        NULL, 
        '771401001', 
        'Г.Москва, вн.тер.г. Муниципальный Округ Хорошевский, б-р Ходынский, д. 20А'
    );
insert into advertiser_data (advertiser_id, advertiser_name, advertiser_phone_number, advertiser_email, advertiser_itn, advertiser_ogrnip, advertiser_kpp, advertiser_address)  
values (
        3,
        'студия рекламы', 
        '8-800-555-35-35', 
        'ad.studio@advert.com', 
        '7713662243', 
        '501201222', 
        NULL, 
        'Г.Москва, Малый Черкасский пер., 74'
    );
insert into advertiser_data (advertiser_id, advertiser_name, advertiser_phone_number, advertiser_email, advertiser_itn, advertiser_ogrnip, advertiser_kpp, advertiser_address)  
values (
        4,
        'рекламщик', 
        '8-800-123-49-58', 
        'reklamshik@advert.com', 
        '771162333', 
        '501011222', 
        NULL, 
        'Г.Москва, Саринский пр-д, 45'
    );          


-- рекламные видео
insert into ad_videos (ad_video_id, advertiser_id, ad_length, ad_type) 
values (
    1, 
    1, 
    '00:01:45',
    'п'
  ); 
insert into ad_videos (ad_video_id, advertiser_id, ad_length, ad_type) 
values (
    2, 
    1, 
    '00:01:30',
    'в'
  ); 
insert into ad_videos (ad_video_id, advertiser_id, ad_length, ad_type) 
values (
    3, 
    2, 
    '00:05:00',
    'п'
  ); 
insert into ad_videos (ad_video_id, advertiser_id, ad_length, ad_type) 
values (
    4, 
    2, 
    '00:04:00',
    'в'
  ); 
insert into ad_videos (ad_video_id, advertiser_id, ad_length, ad_type) 
values (
    5, 
    3, 
    '00:01:20',
    'п'
  ); 
insert into ad_videos (ad_video_id, advertiser_id, ad_length, ad_type) 
values (
    6, 
    3, 
    '0:01:30',
    'в'
  ); 
insert into ad_videos (ad_video_id, advertiser_id, ad_length, ad_type) 
values (
    7, 
    4, 
    '0:02:30',
    'п'
  ); 
insert into ad_videos (ad_video_id, advertiser_id, ad_length, ad_type) 
values (
   8, 
   4, 
   '00:02:00',
   'в'
  ); 


-- показ рекламы 
-- PEPSI CO 1 2
insert into show_ads (ad_video_id, show_id) values (1, 1);
insert into show_ads (ad_video_id, show_id) values (1, 3);
insert into show_ads (ad_video_id, show_id) values (2, 5);
insert into show_ads (ad_video_id, show_id) values (2, 6);
insert into show_ads (ad_video_id, show_id) values (2, 7);
-- 1147 Productions 3 4 
insert into show_ads (ad_video_id, show_id) values (3, 2);
insert into show_ads (ad_video_id, show_id) values (3, 8);
insert into show_ads (ad_video_id, show_id) values (3, 9);
-- студия рекламы 5 6
insert into show_ads (ad_video_id, show_id) values (5, 10);
insert into show_ads (ad_video_id, show_id) values (6, 2);
-- рекламщик 7 8
insert into show_ads (ad_video_id, show_id) values (8, 1);
insert into show_ads (ad_video_id, show_id) values (8, 3);
insert into show_ads (ad_video_id, show_id) values (7, 6);