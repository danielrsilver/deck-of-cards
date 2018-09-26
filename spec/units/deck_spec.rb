require_relative '../../deck'

describe Deck do
  subject { described_class.new }

  context '#initialize' do

    it 'creates a deck' do
      expect(subject).to be_a Deck
    end
  end

  context '#cards' do

    it 'cannot change the deck' do
      expect { subject.cards = '' }.to raise_error NameError
    end

    it 'returns an array of cards'do
      expect(subject.cards).to be_an Array

      expect(subject.cards).to include(a_kind_of(Card))
    end

    it 'the deck has 52 cards' do
      expect(subject.cards.length).to eq 52
    end

    it 'correctly built a deck of cards' do
      cards = described_class.new.cards
      card_values = cards.map{ |x| [x.suit, x.value] }
      suits = %w[clubs hearts diamonds spades]

      expect(card_values.sort).not_to eq(card_values)
      expect(card_values.length).to eq(52)
      suits.each do |s|
        expect(card_values.flatten.count(s)).to eq(13)
      end

      (1..13).to_a.each do |n|
        expect(card_values.flatten.count(n)).to eq(4)
      end
    end
  end

  context '#draw' do

    it 'returns a card from the deck' do
      expect(subject.draw).to be_a Card
    end

    it 'removes the card from the deck' do
      deck = Deck.new
      deck.draw
      expect(deck.cards.length).to eq 51
    end
  end
end
