create table teams (
    id integer primary key generated always as identity,
    team_name varchar,
    conference varchar,
    division varchar
);