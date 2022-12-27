create table match_mast
(
match_no NUMERIC
play_stage CHARACTER(1)
play_date DATE
results CHARACTER(5)
decide_by CHARACTER(1)
goal_score CHARACTER(5)
venue_id NUMERIC 
referee_id NUMERIC
audience NUMERIC
pir_of_match NUMERIC
stop1_sec NUMERIC
stop2_sec NUMERIC
)
select * from match_mast
insert into match_mast(match_no,play_stage,play_date,results,decided_by,goal_score,venue_id,referee_id,audience,pir_of_match,stop1_Sec,stop2_sec)
values();


