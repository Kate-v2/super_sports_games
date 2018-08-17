require 'pry'
require './lib/event'
require './lib/games'


class UserGames

  def define_games
    games = create_games
    event = create_event
    games.add_event(event)
    while prompt_user_another_event == true
      new_event = create_event
      games.add_event(new_event)
    end
    return games
  end

  def create_games
    year = prompt_user_year
    game = Games.new(year)
    return game
  end

  def create_event
    sport = prompt_user_sport
    ages = prompt_user_ages
    event = Event.new(sport, ages)
    return event
  end

  def prompt_user_year
    print "What year's games are you interested in? "
    $stdin.gets.chomp
  end

  def prompt_user_sport
    print "What sport league? "
    $stdin.gets.chomp
  end

  def prompt_user_ages
    print "What were the player ages? (space separated)"
    input = $stdin.gets.chomp
    ages = string_to_ints(input)
    return ages
  end

  def string_to_ints(string)
    words = string.split(", ")
    words.map do |word|
      word.to_i
    end
  end

  def prompt_user_another_event
    print "Another Event? Y/N "
    answer = $stdin.gets.chomp
    decision = false
    if answer == "Y"
      decision = true
    else
      decision = false
    end
    # binding.pry
    return decision
  end

end


games = UserGames.new.define_games
p games.all_events_summary
