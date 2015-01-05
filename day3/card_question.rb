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
    p index
    p @deck_hash
  end
end

class Players
  attr_accessor :card_that_i_got
  def initialize
    self.card_that_i_got = []
  end
  def pick_card card
    self.card_that_i_got.push(card)
  end
end

class Game
  def initialize total_player
    @obj_players = []
    @total_player = total_player
  end
  def create_array
    (0...@total_player).each do |x|
      @obj_players[x] = Players.new
    end
  end

  def card_obtained
    (0...@total_player).each do |j|
      obj_card = Card.new
      rand_value = obj_card.select_card
      @obj_players[j].pick_card rand_value
    end
    #print @obj_players[0].card_that_i_got
  end

  def distribute
    (1..MAX_DISTRIBUTE_CARD).each do |x|
      card_obtained
    end
    (0...@total_player).each do |x|
      #print "#{x+1} Player: #{@obj_players[x].card_that_i_got} \n"
      #p @obj_players[0].card_that_i_got[0].values[1]
      end
    end
    #end
  end

print "Enter no. of players: "
total_players = Integer(gets)
start_game = Game.new total_players
start_game.create_array
start_game.distribute


