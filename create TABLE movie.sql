create TABLE movie
(
    mov_id int,
    mov_title CHAR(50),
    mov_year INT,
    mov_time INT,
    mov_lang CHAR(50),
    mov_dt_rel DATE  not NULL,
    mov_rel_country char(5)
    )
    select * from movie
insert into movie(mov_id,mov_title,mov_year,mov_time,mov_lang,mov_dt_rel,mov_rel_country)
values(26122022,'rakhi',2000,5,'telugu','1990-09-01','india');