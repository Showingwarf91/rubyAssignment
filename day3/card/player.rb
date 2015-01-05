require_relative 'card'

class Player
  attr_accessor :cards

  def initialize
    self.cards = []
  end
  def get_rank
    self.cards.each {|card| Card::CARD_NUMS[self.cards[card].card_num }
  end

  def get_suit
    self.cards.each { |card| p self.cards[card].suit }
  end
end
