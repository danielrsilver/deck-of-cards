require './card'

class Deck
  attr_reader :cards
  def initialize
    @values = 1..13
    @suits = %w[clubs hearts diamonds spades]
    @cards = []
  end

  def cards
    @values.each do |value|
      @suits.each do |suit|
        @cards << Card.new(value, suit)
      end
    end
    @cards.shuffle!
    end


  def draw
    @drawn_cards = []
    @drawn_cards << @cards.pop
  end

  def deal (number)
    number.times {@cards.shift.to_s}
  end

  def remaining
    if @cards.length > 1
      puts "#{@cards.length} cards remaining"
    elsif @cards.length == 1
      puts "#{@cards.lengthj} card remaining"
    else
      puts "No cards left"
    end
  end
end

deck = Deck.new
deck.cards
deck.draw
deck.remaining
