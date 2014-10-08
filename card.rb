class Card
    @@suits = {1=>'Clubs', 2=>'Diamonds', 3=>'Hearts', 4=>'Spades'}
    @@values = {1=>'One', 2=>'Two', 3=>'Three', 4=>'Four', 5=>'Five', 
                6=>'Six', 7=>'Seven', 8=>'Eight', 9=>'Nine', 10=>'Ten',
                11=>'Jack', 12=>'Queen', 13=>'King'}

    attr_accessor :value, :suit
    
    def initialize(value,suit)
        @value = value
        @suit = suit
    end

    def display_card
        return [self.value, self.suits[suit]]
    end
end
