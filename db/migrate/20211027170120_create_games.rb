class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games_chart do |t|
      t.string :home_team_name
      t.string :away_team_name
      t.string :home_team_logo
      t.string :away_team_logo
      t.integer :minute, default: 0
      t.datetime :date
      t.string :reach
      t.string :channel
      t.string :league
      t.string :price_per_minute

      t.timestamps
    end
  end
end
