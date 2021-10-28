require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  setup do
    @game = games(:one)
  end

  test "visiting the index" do
    visit games_url
    assert_selector "h1", text: "Games"
  end

  test "creating a Game" do
    visit games_url
    click_on "New Game"

    fill_in "Away team logo", with: @game.away_team_logo
    fill_in "Away team name", with: @game.away_team_name
    fill_in "Channel", with: @game.channel
    fill_in "Date", with: @game.date
    fill_in "Home team logo", with: @game.home_team_logo
    fill_in "Home team name", with: @game.home_team_name
    fill_in "League", with: @game.league
    fill_in "Minute", with: @game.minute
    fill_in "Price per minute", with: @game.price_per_minute
    fill_in "Reach", with: @game.reach
    click_on "Create Game"

    assert_text "Game was successfully created"
    click_on "Back"
  end

  test "updating a Game" do
    visit games_url
    click_on "Edit", match: :first

    fill_in "Away team logo", with: @game.away_team_logo
    fill_in "Away team name", with: @game.away_team_name
    fill_in "Channel", with: @game.channel
    fill_in "Date", with: @game.date
    fill_in "Home team logo", with: @game.home_team_logo
    fill_in "Home team name", with: @game.home_team_name
    fill_in "League", with: @game.league
    fill_in "Minute", with: @game.minute
    fill_in "Price per minute", with: @game.price_per_minute
    fill_in "Reach", with: @game.reach
    click_on "Update Game"

    assert_text "Game was successfully updated"
    click_on "Back"
  end

  test "destroying a Game" do
    visit games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game was successfully destroyed"
  end
end
