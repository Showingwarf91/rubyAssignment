require 'card'

class Deck
  attr_accessor :cards
  
  def initialize
    self.cards = []
    Card::CARD_NUMS.each do |num|
      Card::CARD_SUITS.each {|suit| self.cards << Card.new(num,suit)}
    end
  end
  
  # Deal a single random card from the deck
  # @return [Card] card 
  def deal
    card = self.cards.sample
    self.cards.delete(card)
    card
  end
  
end