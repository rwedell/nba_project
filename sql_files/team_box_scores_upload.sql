copy team_box_scores (
    game_date,
    start_time, 
    visitor_team, 
    visitor_points, 
    home_team,
    home_points, 
    overtime, 
    attendance, 
    arena)
from 'filepath' 
with (format csv, header true);