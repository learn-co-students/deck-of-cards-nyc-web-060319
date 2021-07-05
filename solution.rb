require 'pry'
class Deck
    attr_accessor :cards

    def initialize
        @cards = []
        for suit in ["Hearts", "Clubs", "Diamonds", "Spades"] do
            for rank in ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] do
              @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        @cards.delete(@cards.sample)
    end
end

######################################

class Card
    attr_accessor :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suite = suit

    end

end

binding.pry