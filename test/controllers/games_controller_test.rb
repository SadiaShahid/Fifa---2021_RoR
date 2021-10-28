require "test_helper"

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get games_url
    assert_response :success
  end

  test "should get new" do
    get new_game_url
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post games_url, params: { game: { away_team_logo: @game.away_team_logo, away_team_name: @game.away_team_name, channel: @game.channel, date: @game.date, home_team_logo: @game.home_team_logo, home_team_name: @game.home_team_name, league: @game.league, minute: @game.minute, price_per_minute: @game.price_per_minute, reach: @game.reach } }
    end

    assert_redirected_to game_url(Game.last)
  end

  test "should show game" do
    get game_url(@game)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_url(@game)
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game), params: { game: { away_team_logo: @game.away_team_logo, away_team_name: @game.away_team_name, channel: @game.channel, date: @game.date, home_team_logo: @game.home_team_logo, home_team_name: @game.home_team_name, league: @game.league, minute: @game.minute, price_per_minute: @game.price_per_minute, reach: @game.reach } }
    assert_redirected_to game_url(@game)
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete game_url(@game)
    end

    assert_redirected_to games_url
  end
end
