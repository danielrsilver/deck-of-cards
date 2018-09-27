require './card'

Suits = %w[clubs hearts diamonds spades]
Values = 1..13

class Deck
  attr_reader :cards
  def initialize
    @cards = []
  end

  def cards
    Values.each do |value|
      Suits.each do |suit|
        @cards << Card.new(value, suit)
      end
    end
    @cards.shuffle!
  end

  def draw(number_drawn)
     cards_drawn = []
     number_drawn.times { cards_drawn << @cards.pop }
     puts "Your cards are: "
     puts cards_drawn
  end

  def remaining
    if @cards.length > 1
      puts "There are #{@cards.length} cards remaining in the deck"
    elsif @cards.length == 1
      puts "There is #{@cards.lengthj} card remaining in the deck"
    else
      puts "No cards left"
    end
  end
end

# One deck of cards
deck = Deck.new
deck.cards

# Prompts user for number of cards to draw and removes cards from deck
puts "How many cards would you like to draw?"
number = gets.chomp.to_i
deck.draw(number)
deck.remaining
