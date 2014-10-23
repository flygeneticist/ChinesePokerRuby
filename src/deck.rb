require './src/card'

class Deck
    attr_accessor :deck
    
    def initialize
        @deck = []
        @card_counter = 0
        shuffle_new_deck
    end

    # make the deck at the start of a round
    def shuffle_new_deck 
        @deck = []
        card_values = [1,2,3,4,5,6,7,8,9,10,11,12,13] # Ace is 1
        card_suits = [1,2,3,4] # {1: Clubs, 2: Diamonds, 3: Hearts, 4: Spades}
        card_suits.each do |suit|
            card_values.each do |value|
                @deck << Card.new(value, suit)
            end
        end
        @deck = @deck.shuffle
        @card_counter = 0
    end

    # deals one card from the top of the deck
    def deal_card
        if @card_counter < @deck.length
            dealt_card = @deck[@card_counter]
            @card_counter += 1
            return dealt_card
        else
            puts "Out of cards!"
            return nil
        end
    end
end
