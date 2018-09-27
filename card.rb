class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def face
    if (2..10) === @value
      @value
    else
      face_cards = { 1 => 'Ace', 11 => 'Jack', 12 => 'Queen', 13 => 'King' }
        face_cards[@value]
    end
  end

  def to_s
    "#{face} of #{suit.capitalize}"
  end
end
