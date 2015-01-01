MAX_DISTRIBUTE_CARD = 3
class Card
   def card_deck
    @card_type = ["Heart","Clubs","Diamond","Spade"]
    @deck_hash = []
    #deck insertion
    (0...@card_type.length).each do |type_of_card|
      (2..14).each do |type_card_number|
        @deck_hash.push({"key" => @card_type[type_of_card],"value" => type_card_number })
      end
    end
  end

  def select_card
    card_deck
    r = Random.new
    index = r.rand(@deck_hash.length)
    value_is = @deck_hash[index]
    @deck_hash.delete_at(index)
  end
end

class Players < Card
  attr_accessor :card_that_i_got
  def initialize
    self.card_that_i_got = []
  end
  def pick_card card
    self.card_that_i_got.push(card)
  end
end

class Game < Card
  def initialize total_player
    @obj_players = []
    @total_player = total_player
  end
  def create_array
    (0...@total_player).each do |max_player|
      @obj_players[max_player] = Players.new
    end
    @obj_players
  end

  def card_obtained
    (0...@total_player).each do |j|
      rand_value = select_card
      @obj_players[j].pick_card rand_value
    end
  end


end

print "Enter no. of players: "
total_players = Integer(gets)
start_game = Game.new total_players
start_game.create_array
start_game.card_obtained

