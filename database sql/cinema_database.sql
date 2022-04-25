/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     25.04.2022 18:08:24                          */
/*==============================================================*/


drop index actors_PK;

drop table actors;

drop index advertisers_ads_FK;

drop index ad_videos_PK;

drop table ad_videos;

drop index advertiser_data_PK;

drop table advertiser_data;

drop index cinema_room_PK;

drop table cinema_room;

drop index movie_PK;

drop table movie;

drop index movies_actors_FK;

drop index movies_actors_PK;

drop table movies_actors;

drop index movies_studios_AK;

drop index movies_studios_FK;

drop table movies_studios;

drop index movies_screenings_FK;

drop index screenings_in_cinemas_FK;

drop index show_PK;

drop table show;

drop index show_ads_AK;

drop index show_ads_FK;

drop table show_ads;

drop index studios_PK;

drop table studios;

drop index tickets_show_FK;

drop index tickets_data_PK;

drop table tickets_data;

/*==============================================================*/
/* Table: actors                                                */
/*==============================================================*/
create table actors (
   actor_name           VARCHAR(64)          not null,
   actor_movie_name     VARCHAR(64)          null,
   constraint PK_ACTORS primary key (actor_name)
);

/*==============================================================*/
/* Index: actors_PK                                             */
/*==============================================================*/
create unique index actors_PK on actors (
actor_name
);

/*==============================================================*/
/* Table: ad_videos                                             */
/*==============================================================*/
create table ad_videos (
   ad_video_id          INT4                 not null,
   advertiser_name      VARCHAR(64)          not null,
   ad_length            TIME                 null,
   ad_type              VARCHAR(64)          null,
   ad_show              VARCHAR(64)          null,
   ad_advertiser        VARCHAR(64)          null,
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
advertiser_name
);

/*==============================================================*/
/* Table: advertiser_data                                       */
/*==============================================================*/
create table advertiser_data (
   advertiser_name      VARCHAR(64)          not null,
   advertiser_phone_number VARCHAR(64)          null,
   advertiser_email     VARCHAR(64)          null,
   advertiser_itn       VARCHAR(64)          null,
   advertiser_type      VARCHAR(64)          null,
   advertiser_registration_number VARCHAR(64)          null,
   advertiser_address   VARCHAR(64)          null,
   constraint PK_ADVERTISER_DATA primary key (advertiser_name)
);

/*==============================================================*/
/* Index: advertiser_data_PK                                    */
/*==============================================================*/
create unique index advertiser_data_PK on advertiser_data (
advertiser_name
);

/*==============================================================*/
/* Table: cinema_room                                           */
/*==============================================================*/
create table cinema_room (
   cinema_room_number   INT4                 not null,
   cinema_room_seats_number INT4                 null,
   cinema_room_type     INT4                 null,
   cinema_room_projector_type VARCHAR(64)          null,
   constraint PK_CINEMA_ROOM primary key (cinema_room_number)
);

/*==============================================================*/
/* Index: cinema_room_PK                                        */
/*==============================================================*/
create unique index cinema_room_PK on cinema_room (
cinema_room_number
);

/*==============================================================*/
/* Table: movie                                                 */
/*==============================================================*/
create table movie (
   movie_name           VARCHAR(64)          not null,
   movie_length         TIME                 null,
   movie_license_price  INT4                 null,
   movie_rental_days    INT4                 null,
   movie_age_restriction VARCHAR(3)           null,
   movie_director_name  VARCHAR(64)          null,
   constraint PK_MOVIE primary key (movie_name)
);

/*==============================================================*/
/* Index: movie_PK                                              */
/*==============================================================*/
create unique index movie_PK on movie (
movie_name
);

/*==============================================================*/
/* Table: movies_actors                                         */
/*==============================================================*/
create table movies_actors (
   movie_name           VARCHAR(64)          not null,
   actor_name           VARCHAR(64)          not null,
   constraint PK_MOVIES_ACTORS primary key (actor_name, movie_name)
);

/*==============================================================*/
/* Index: movies_actors_PK                                      */
/*==============================================================*/
create unique index movies_actors_PK on movies_actors (
movie_name,
actor_name
);

/*==============================================================*/
/* Index: movies_actors_FK                                      */
/*==============================================================*/
create  index movies_actors_FK on movies_actors (
actor_name
);

/*==============================================================*/
/* Table: movies_studios                                        */
/*==============================================================*/
create table movies_studios (
   movie_name           VARCHAR(64)          not null,
   studio_name          VARCHAR(64)          not null,
   constraint PK_MOVIES_STUDIOS primary key (movie_name, studio_name)
);

/*==============================================================*/
/* Index: movies_studios_FK                                     */
/*==============================================================*/
create  index movies_studios_FK on movies_studios (
movie_name
);

/*==============================================================*/
/* Index: movies_studios_AK                                     */
/*==============================================================*/
create unique index movies_studios_AK on movies_studios (
movie_name,
studio_name
);

/*==============================================================*/
/* Table: show                                                  */
/*==============================================================*/
create table show (
   show_id              INT4                 not null,
   movie_name           VARCHAR(64)          not null,
   cinema_room_number   INT4                 not null,
   show_movie_name      VARCHAR(64)          not null,
   show_start_time      DATE                 null,
   show_cinema_room_number INT4                 null,
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
movie_name
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
/* Index: show_ads_FK                                           */
/*==============================================================*/
create  index show_ads_FK on show_ads (
ad_video_id
);

/*==============================================================*/
/* Index: show_ads_AK                                           */
/*==============================================================*/
create unique index show_ads_AK on show_ads (
ad_video_id,
show_id
);

/*==============================================================*/
/* Table: studios                                               */
/*==============================================================*/
create table studios (
   studio_name          VARCHAR(64)          not null,
   studio_year_of_founding INT4                 null,
   studio_movie_name    VARCHAR(64)          null,
   constraint PK_STUDIOS primary key (studio_name)
);

/*==============================================================*/
/* Index: studios_PK                                            */
/*==============================================================*/
create unique index studios_PK on studios (
studio_name
);

/*==============================================================*/
/* Table: tickets_data                                          */
/*==============================================================*/
create table tickets_data (
   ticket_id            INT4                 not null,
   show_id              INT4                 not null,
   seat_id              INT4                 not null,
   ticket_payment_info  VARCHAR(64)          null,
   ticket_price         INT4                 null,
   ticket_movie_session VARCHAR(64)          null,
   ticket_seat_row_number INT4                 null,
   ticket_seat_number   INT4                 null,
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

alter table ad_videos
   add constraint FK_AD_VIDEO_ADVERTISE_ADVERTIS foreign key (advertiser_name)
      references advertiser_data (advertiser_name)
      on delete restrict on update restrict;

alter table movies_actors
   add constraint FK_MOVIES_A_MOVIES_AC_ACTORS foreign key (actor_name)
      references actors (actor_name)
      on delete restrict on update restrict;

alter table movies_actors
   add constraint FK_MOVIES_A_MOVIES_AC_MOVIE foreign key (movie_name)
      references movie (movie_name)
      on delete restrict on update restrict;

alter table movies_studios
   add constraint FK_MOVIES_S_MOVIES_ST_MOVIE foreign key (movie_name)
      references movie (movie_name)
      on delete restrict on update restrict;

alter table movies_studios
   add constraint FK_MOVIES_S_MOVIES_ST_STUDIOS foreign key (studio_name)
      references studios (studio_name)
      on delete restrict on update restrict;

alter table show
   add constraint FK_SHOW_MOVIES_SC_MOVIE foreign key (movie_name)
      references movie (movie_name)
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
   add constraint FK_TICKETS__TICKETS_S_SHOW foreign key (show_id)
      references show (show_id)
      on delete restrict on update restrict;

