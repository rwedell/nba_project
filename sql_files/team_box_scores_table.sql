create table team_box_scores (
    id integer primary key generated always as identity,
    game_date varchar,
    start_time varchar,
    visitor_team varchar,
    visitor_points integer,
    home_team varchar,
    home_points integer,
    overtime varchar,
    attendance integer,
    arena varchar
);