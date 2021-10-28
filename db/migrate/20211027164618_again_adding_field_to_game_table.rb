class AgainAddingFieldToGameTable < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :home_team_name, :string
    add_column :games, :away_team_name, :string
    add_column :games, :home_team_logo, :string
    add_column :games, :away_team_logo, :string
    add_column :games, :date, :datetime
    add_column :games, :reach, :integer
    add_column :games, :channel, :string
    add_column :games, :league, :string
    add_column :games, :price_per_minute, :string
  end
end
