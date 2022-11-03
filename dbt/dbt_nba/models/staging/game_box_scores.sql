with game_box_scores as (
    select 
	    id,			
	    (to_timestamp(
		    game_date || ' ' || start_time || 'm', 'Dy Mon DD YYYY HH:MIpmam') 
		    at time zone 'America/New_York')::timestamptz as game_date,
        visitor_team,
        visitor_points,
        home_team,
        home_points,
        overtime is not null as overtime,
        attendance,
        arena 
from team_box_scores
)

select *
from game_box_scores