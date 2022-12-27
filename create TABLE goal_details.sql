create TABLE goal_details
(
    goal_id NUMERIC,
    match_no NUMERIC,
    player_id NUMERIC,
    team_id NUMERIC,
    goal_time NUMERIC
    goal_type CHARACTER(1)
    play_stage CHARACTER(1)
    goal_schedule CHARACTER(2)
    goal_half NUMERIC
)
select * from goal_details(goa_id,match_no,player_id,team_id,goal_time,goal_type,play_stage,goal_schedule,goal_half)
values();
