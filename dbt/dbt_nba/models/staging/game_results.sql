with game_results as (
    select 
        id as game_id,
        game_date,
        case 
            when home_points > visitor_points then home_team 
            else visitor_team 
            end as winning_team,
        case 
            when home_points < visitor_points then home_team 
            else visitor_team 
            end as losing_team
    from {{ ref('game_box_scores') }}
)

select * from game_results