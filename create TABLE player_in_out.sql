create TABLE player_in_out
(
match_no NUMERIC
team_id NUMERIC
player_id NUMERIC
in_out CHARACTER(1)
time_in_out NUMERIC
play_schedule CHARACTER(2)
play_half NUMERIC
)
select * from player_in_out
insert into  player_in_out(match_no,team_id,player_id,in_out,time_in_out,play_sechudle,play_half)
values();