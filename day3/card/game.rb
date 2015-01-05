$:.unshift File.dirname(__FILE__)

require 'deck'
require 'player'

class Game

  attr_accessor :player_num, :players, :deck

  MIN_PLAYERS = 2
  MAX_PLAYERS = 10

  # Initialize the game. Create players and deck
  def initialize (player_num)
    if (player_num > MAX_PLAYERS || player_num < MIN_PLAYERS)
      raise "Number of players should be between #{MIN_PLAYERS} and #{MAX_PLAYERS}"
    end
    self.player_num = player_num
    self.players = []
    self.player_num.times {self.players << Player.new}
    self.deck = Deck.new
  end

  # Start the game. Deal 3 cards to each player from the deck and show the cards
  def start
    3.times do
      self.players.each {|player| player.cards << self.deck.deal}
    end

    self.players.each_with_index do |player, index|
      puts "\nPlayer #{index + 1}: "
      player.cards.each {|card| puts card.to_s}
    end
  end

end

#Program entry point. Get the number of players from user
puts "Please enter the number of players"
#player_num = Integer(gets) rescue 0 #Take integer input only. Otherwise return 0

#Create and start the game and handle any exception
begin
  game = Game.new(5)
  game.start
rescue Exception => e
  puts e.to_s
end
