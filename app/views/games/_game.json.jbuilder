json.extract! game, :id, :home_team_name, :away_team_name, :home_team_logo, :away_team_logo, :minute, :date, :reach, :channel, :league, :price_per_minute, :created_at, :updated_at
json.url game_url(game, format: :json)
