class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def face
    if (2..10).include?value
    value
    elsif value == 1
    'Ace'
    elsif value == 11
    'Jack'
    elsif value == 12
    'Queen'
    elsif value == 13
    'King'
    else 'try again'
    end
  end

  def to_s
    "#{face} of #{suit.capitalize}"
  end
end

card = Card.new(13, 'hearts')
puts card
