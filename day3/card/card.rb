class Card
  attr_accessor :card_num, :suit, :card_collection

  CARD_SUITS = ['Spade', 'Heart', 'Club', 'Diamond']
  CARD_VALUES = {Two: 2, Three: 3, Four: 4, Five: 5, Six: 6, Seven: 7, Eight: 8, Nine: 9, Ten: 10, Jack:11, Queen:12, King:13, Ace: 14 }
  CARD_NUMS = CARD_VALUES.values
  def initialize (card_num, suit)
    self.card_num = card_num
    self.suit = suit
  end

  def to_s
    "#{self.card_num} of #{suit}"
  end

end
