class Deck
    attr_accessor :cards
    def initialize
        @cards = Array.new(52) {Card.new}
    end

    def choose_card
        @cards.pop
    end
end

class Card
    attr_accessor :rank
    attr_accessor :suit

    def initialize(suit = nil, rank = nil)
        @rank = rank
        @suit = suit
    end
end
