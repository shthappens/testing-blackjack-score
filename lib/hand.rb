require 'pry'

require_relative 'deck'

class Hand

  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    # Your code here after writing tests
    # Think about what this method needs to do
    score = 0
    @cards.each do |value|
      if value.include?('J') || value.include?('Q') || value.include?('K')
        score += 10
      elsif value.include?('A') && score < 11
        score += 11
      elsif value.include?('A') && score >= 11
        score += 1
      else
        score += value.to_f
      end
    end
    score
  end
end


deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
