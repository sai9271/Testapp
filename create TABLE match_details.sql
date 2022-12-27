create TABLE match_details
(
    match_no NUMERIC
    play_stage VARCHAR2(1)
    team_id NUMERIC
    win_loos VARCHAR2(1)
    decided_by VARCHAR2(1)
    goal_score NUMERIC
    penalty_score NUMERIC
    ass_ref NUMERIC
    player_gk NUMERIC
)
select * from match_details
insert into match_details(match_no,play_stage,team_id,win_loos,decided_by,goal_score,penalty_Score,ass_ref,player_gk)
values();
