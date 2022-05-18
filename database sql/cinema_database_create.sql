/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     14.05.2022 12:29:50                          */
/*==============================================================*/


-- drop index advertisers_ads_FK;

-- drop index ad_videos_PK;

-- drop table ad_videos;

-- drop index advertiser_data_PK;

-- drop table advertiser_data;

-- drop index cinema_room_PK;

-- drop table cinema_room;

-- drop index countries_PK;

-- drop table countries;

-- drop index genres_PK;

-- drop table genres;

-- drop index movie_PK;

-- drop table movie;

-- drop table movies_countries;

-- drop table movies_genres;

-- drop index movies_people_FK;

-- drop index movies_people2_FK;

-- drop index movies_people_PK;

-- drop table movies_people;

-- drop index movies_studios_FK;

-- drop index movies_studios_PK;

-- drop table movies_studios;

-- drop index peoples_PK;

-- drop table peoples;

-- drop index cinema_room_seats_rows_FK;

-- drop index seats_rows_PK;

-- drop table seats_rows;

-- drop index movies_screenings_FK;

-- drop index screenings_in_cinemas_FK;

-- drop index show_PK;

-- drop table show;

-- drop index show_ads_PK;

-- drop table show_ads;

-- drop index studios_PK;

-- drop table studios;

-- drop index tickets_seat_row_FK;

-- drop index tickets_show_FK;

-- drop index tickets_data_PK;

-- drop table tickets_data;

/*==============================================================*/
/* Table: ad_videos                                             */
/*==============================================================*/
create table ad_videos (
   ad_video_id          INT4                 not null,
   advertiser_id        INT4                 not null,
   ad_length            TIME                 not null,
   ad_type              VARCHAR(64)          not null,
   constraint PK_AD_VIDEOS primary key (ad_video_id)
);

/*==============================================================*/
/* Index: ad_videos_PK                                          */
/*==============================================================*/
create unique index ad_videos_PK on ad_videos (
ad_video_id
);

/*==============================================================*/
/* Index: advertisers_ads_FK                                    */
/*==============================================================*/
create  index advertisers_ads_FK on ad_videos (
advertiser_id
);

/*==============================================================*/
/* Table: advertiser_data                                       */
/*==============================================================*/
create table advertiser_data (
   advertiser_id        INT4                 not null,
   advertiser_name      VARCHAR(64)          not null,
   advertiser_phone_number VARCHAR(64) UNIQUE         not null,
   advertiser_email     VARCHAR(64) UNIQUE         not null,
   advertiser_itn       VARCHAR(64) UNIQUE         not null,
   advertiser_ogrnip    VARCHAR(64) UNIQUE         null,
   advertiser_kpp       VARCHAR(64) UNIQUE         null,
   advertiser_address   VARCHAR(256) UNIQUE         not null,
   constraint PK_ADVERTISER_DATA primary key (advertiser_id)
);

/*==============================================================*/
/* Index: advertiser_data_PK                                    */
/*==============================================================*/
create unique index advertiser_data_PK on advertiser_data (
advertiser_id
);

/*==============================================================*/
/* Table: cinema_room                                           */
/*==============================================================*/
create table cinema_room (
   cinema_room_number   INT4                 not null,
   cinema_room_type     INT4                 not null,
   cinema_room_projector_type VARCHAR(64)          not null,
   constraint PK_CINEMA_ROOM primary key (cinema_room_number)
);

/*==============================================================*/
/* Index: cinema_room_PK                                        */
/*==============================================================*/
create unique index cinema_room_PK on cinema_room (
cinema_room_number
);

/*==============================================================*/
/* Table: countries                                             */
/*==============================================================*/
create table countries (
   country_id           INT4                 not null,
   country_name         VARCHAR(64) UNIQUE         not null,
   constraint PK_COUNTRIES primary key (country_id)
);

/*==============================================================*/
/* Index: countries_PK                                          */
/*==============================================================*/
create unique index countries_PK on countries (
country_id
);

/*==============================================================*/
/* Table: genres                                                */
/*==============================================================*/
create table genres (
   genre_id             INT4                 not null,
   genre_name           VARCHAR(64) UNIQUE         not null,
   constraint PK_GENRES primary key (genre_id)
);

/*==============================================================*/
/* Index: genres_PK                                             */
/*==============================================================*/
create unique index genres_PK on genres (
genre_id
);

/*==============================================================*/
/* Table: movie                                                 */
/*==============================================================*/
create table movie (
   movie_id             INT4                 not null,
   movie_name           VARCHAR(64)          not null,
   movie_length         TIME                 not null,
   movie_license_price  INT4                 not null,
   movie_rental_days    INT4                 null,
   movie_age_restriction VARCHAR(3)           null,
   constraint PK_MOVIE primary key (movie_id)
);

/*==============================================================*/
/* Index: movie_PK                                              */
/*==============================================================*/
create unique index movie_PK on movie (
movie_id
);

/*==============================================================*/
/* Table: movies_countries                                      */
/*==============================================================*/
create table movies_countries (
   country_id           INT4                 not null,
   movie_id             INT4                 not null,
   constraint AK_MOVIE_COUNTRIES_ID_MOVIES_C unique (country_id, movie_id)
);

/*==============================================================*/
/* Table: movies_genres                                         */
/*==============================================================*/
create table movies_genres (
   genre_id             INT4                 not null,
   movie_id             INT4                 not null,
   constraint AK_MOVIES_GENRES_ID_MOVIES_G unique (genre_id, movie_id)
);

/*==============================================================*/
/* Table: movies_people                                         */
/*==============================================================*/
create table movies_people (
   people_id            INT4                 not null,
   movie_id             INT4                 not null,
   movies_people_id     INT4                 not null,
   movie_people_role    VARCHAR(64)          not null,
   constraint PK_MOVIES_PEOPLE primary key (movies_people_id)
);

/*==============================================================*/
/* Index: movies_people_PK                                      */
/*==============================================================*/
create unique index movies_people_PK on movies_people (
movies_people_id
);

/*==============================================================*/
/* Index: movies_people2_FK                                     */
/*==============================================================*/
create  index movies_people2_FK on movies_people (
movie_id
);

/*==============================================================*/
/* Index: movies_people_FK                                      */
/*==============================================================*/
create  index movies_people_FK on movies_people (
people_id
);

/*==============================================================*/
/* Table: movies_studios                                        */
/*==============================================================*/
create table movies_studios (
   movie_id             INT4                 not null,
   studio_id            INT4                 not null,
   movies_studios_id    INT4                 not null,
   constraint PK_MOVIES_STUDIOS primary key (movies_studios_id)
);

/*==============================================================*/
/* Index: movies_studios_PK                                     */
/*==============================================================*/
create unique index movies_studios_PK on movies_studios (
movies_studios_id
);

/*==============================================================*/
/* Index: movies_studios_FK                                     */
/*==============================================================*/
create  index movies_studios_FK on movies_studios (
movie_id
);

/*==============================================================*/
/* Table: peoples                                               */
/*==============================================================*/
create table peoples (
   people_id            INT4                 not null,
   people_name          VARCHAR(64)          not null,
   constraint PK_PEOPLES primary key (people_id)
);

/*==============================================================*/
/* Index: peoples_PK                                            */
/*==============================================================*/
create unique index peoples_PK on peoples (
people_id
);

/*==============================================================*/
/* Table: seats_rows                                            */
/*==============================================================*/
create table seats_rows (
   seats_rows_id        INT4                 not null,
   cinema_room_number   INT4                 not null,
   seat_number          INT4                 not null,
   row_number           INT4                 not null,
   seat_row_price_coefficient FLOAT4 CHECK (seat_row_price_coefficient > 0)               not null,
   constraint PK_SEATS_ROWS primary key (seats_rows_id)
);

/*==============================================================*/
/* Index: seats_rows_PK                                         */
/*==============================================================*/
create unique index seats_rows_PK on seats_rows (
seats_rows_id
);

/*==============================================================*/
/* Index: cinema_room_seats_rows_FK                             */
/*==============================================================*/
create  index cinema_room_seats_rows_FK on seats_rows (
cinema_room_number
);

/*==============================================================*/
/* Table: show                                                  */
/*==============================================================*/
create table show (
   show_id              INT4                 not null,
   cinema_room_number   INT4                 not null,
   movie_id             INT4                 not null,
   show_start_time      TIMESTAMP            not null,
   constraint PK_SHOW primary key (show_id)
);

/*==============================================================*/
/* Index: show_PK                                               */
/*==============================================================*/
create unique index show_PK on show (
show_id
);

/*==============================================================*/
/* Index: screenings_in_cinemas_FK                              */
/*==============================================================*/
create  index screenings_in_cinemas_FK on show (
cinema_room_number
);

/*==============================================================*/
/* Index: movies_screenings_FK                                  */
/*==============================================================*/
create  index movies_screenings_FK on show (
movie_id
);

/*==============================================================*/
/* Table: show_ads                                              */
/*==============================================================*/
create table show_ads (
   ad_video_id          INT4                 not null,
   show_id              INT4                 not null,
   constraint PK_SHOW_ADS primary key (ad_video_id, show_id)
);

/*==============================================================*/
/* Index: show_ads_PK                                           */
/*==============================================================*/
create unique index show_ads_PK on show_ads (
ad_video_id,
show_id
);

/*==============================================================*/
/* Table: studios                                               */
/*==============================================================*/
create table studios (
   studio_id            INT4                 not null,
   studio_name          VARCHAR(64)          not null,
   studio_year_of_founding INT4                 null,
   constraint PK_STUDIOS primary key (studio_id)
);

/*==============================================================*/
/* Index: studios_PK                                            */
/*==============================================================*/
create unique index studios_PK on studios (
studio_id
);

/*==============================================================*/
/* Table: tickets_data                                          */
/*==============================================================*/
create table tickets_data (
   ticket_id            INT4                 not null,
   show_id              INT4                 not null,
   seats_rows_id        INT4                 not null,
   ticket_payment_info  VARCHAR(64)          not null,
   ticket_price         INT4                 not null,
   constraint PK_TICKETS_DATA primary key (ticket_id)
);

/*==============================================================*/
/* Index: tickets_data_PK                                       */
/*==============================================================*/
create unique index tickets_data_PK on tickets_data (
ticket_id
);

/*==============================================================*/
/* Index: tickets_show_FK                                       */
/*==============================================================*/
create  index tickets_show_FK on tickets_data (
show_id
);

/*==============================================================*/
/* Index: tickets_seat_row_FK                                   */
/*==============================================================*/
create  index tickets_seat_row_FK on tickets_data (
seats_rows_id
);

alter table ad_videos
   add constraint FK_AD_VIDEO_ADVERTISE_ADVERTIS foreign key (advertiser_id)
      references advertiser_data (advertiser_id)
      on delete restrict on update restrict;

alter table movies_countries
   add constraint FK_MOVIES_C_MOVIES_CO_COUNTRIE foreign key (country_id)
      references countries (country_id)
      on delete restrict on update restrict;

alter table movies_countries
   add constraint FK_MOVIES_C_MOVIES_CO_MOVIE foreign key (movie_id)
      references movie (movie_id)
      on delete restrict on update restrict;

alter table movies_genres
   add constraint FK_MOVIES_G_MOVIES_GE_GENRES foreign key (genre_id)
      references genres (genre_id)
      on delete restrict on update restrict;

alter table movies_genres
   add constraint FK_MOVIES_G_MOVIES_GE_MOVIE foreign key (movie_id)
      references movie (movie_id)
      on delete restrict on update restrict;

alter table movies_people
   add constraint FK_MOVIES_P_MOVIES_PE_PEOPLES foreign key (people_id)
      references peoples (people_id)
      on delete restrict on update restrict;

alter table movies_people
   add constraint FK_MOVIES_P_MOVIES_PE_MOVIE foreign key (movie_id)
      references movie (movie_id)
      on delete restrict on update restrict;

alter table movies_studios
   add constraint FK_MOVIES_S_MOVIES_ST_MOVIE foreign key (movie_id)
      references movie (movie_id)
      on delete restrict on update restrict;

alter table movies_studios
   add constraint FK_MOVIES_S_MOVIES_ST_STUDIOS foreign key (studio_id)
      references studios (studio_id)
      on delete restrict on update restrict;

alter table seats_rows
   add constraint FK_SEATS_RO_CINEMA_RO_CINEMA_R foreign key (cinema_room_number)
      references cinema_room (cinema_room_number)
      on delete restrict on update restrict;

alter table show
   add constraint FK_SHOW_MOVIES_SC_MOVIE foreign key (movie_id)
      references movie (movie_id)
      on delete restrict on update restrict;

alter table show
   add constraint FK_SHOW_SCREENING_CINEMA_R foreign key (cinema_room_number)
      references cinema_room (cinema_room_number)
      on delete restrict on update restrict;

alter table show_ads
   add constraint FK_SHOW_ADS_SHOW_ADS_AD_VIDEO foreign key (ad_video_id)
      references ad_videos (ad_video_id)
      on delete restrict on update restrict;

alter table show_ads
   add constraint FK_SHOW_ADS_SHOW_ADS2_SHOW foreign key (show_id)
      references show (show_id)
      on delete restrict on update restrict;

alter table tickets_data
   add constraint FK_TICKETS__TICKETS_S_SEATS_RO foreign key (seats_rows_id)
      references seats_rows (seats_rows_id)
      on delete restrict on update restrict;

alter table tickets_data
   add constraint FK_TICKETS__TICKETS_S_SHOW foreign key (show_id)
      references show (show_id)
      on delete restrict on update restrict;

