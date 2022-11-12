with
    wins as (
        select
            winning_team,
            count(*) as win_count
        from {{ ref('game_results') }}
        group by 1
    ),

    losses as (
        select
            losing_team,
            count(*) as loss_count
        from {{ ref('game_results') }}
        group by 1
    ),

    conference_standings as (
        select
            teams.team_name,
            teams.conference,
            coalesce(wins.win_count, 0) as win_count,
            coalesce(losses.loss_count, 0) as loss_count
        from public.teams as teams
            left join wins on teams.team_name = wins.winning_team
            left join losses on teams.team_name = losses.losing_team
        order by conference, 3 desc, 4
    )

select * from conference_standings