require card

class Deck
    attr_accessor :deck
    
    def initialize
        @deck
        @card_counter = 0
        make_a_deck
    end
    
    def shuffle_new_deck # make the deck at the start of a round
        self.deck = []
        card_values = [1,2,3,4,5,6,7,8,9,10,11,12,13] # Ace is 1
        card_suits = [1,2,3,4] # {1: Clubs, 2: Diamonds, 3: Hearts, 4: Spades}
        card_suits.each do |suit|
            card_values.each do |value|

        end
        self.deck = self.deck.shuffle
    end

    def deal_card (player)
        dealt_card = self.deck[card_counter]
        card_counter += 1
        return deal_card
    end
end