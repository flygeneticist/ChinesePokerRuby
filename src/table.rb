require './src/hand'
require './src/deck'
require './src/player'

class Table
  # table has n number of players sitting at it. 
  attr_accessor :players, :deck

  # table setup takes n number of players (default to 4 players)
  def initialize(n=4)
    @deck = Deck.new
    @players = []
    n.times{ @players << Player.new }
  end

  def new_round
    # set things to do each round of the game
    @deck.shuffle_new_deck
    @players.each do |player| 
      player.hands = Hand.new
      13.times { player.hands.all_cards << @deck.deal_card }
    end
  end

  # compares two players' sub-hands and returns the winner and amount won
  def compare(p1,p2,type)
    winner = nil
    amount = 0
    case type
      when 'top'
        puts 'checking top hand...'
      when 'middle'
        puts 'checking middle hand...'
      when 'bottom'
        puts 'checking bottom hand...'
      else
        puts "Not a valid sub-hand!"
    end 
    return [winner, amount]
  end

  # compare hands between all players at a table and exchange winnings
  def settle
    combos = @players.permutation(2).to_a # setup array of player pair combos
    combos.each do |c| # cycle through pair combos
      # compare each player's sub-hands with one another
      compare(c[0].hands.top, c[1].hands.top, 'top')
      compare(c[0].hands.middle, c[1].hands.middle, 'middle')
      compare(c[0].hands.bottom, c[1].hands.bottom, 'bottom')
    end
  end
end
