require './src/table'

puts "Chinese Poker"
puts "Starting the game."
game = Table.new

play = true
while (play)
  game.new_round
  
  game.players.each do |p|
    turn = true
    while (turn)
      puts "What do you want to do?"
      input = gets.chomp.strip.downcase
      case input
        when 'quit' # quit the game
          play = false
          turn = false
        when 'show'
          puts "All un-assigned cards:"
          p.hands.all_cards.each do |c|
            print "#{c.display_card}, "
          end
          puts
          puts "Top hand:"
          p.hands.top.each do |c|
            print "#{c.display_card}, "
          end
          puts
          puts "Middle hand:"
          p.hands.middle.each do |c|
            print "#{c.display_card}, "
          end
          puts
          puts "Bottom hand:"
          p.hands.bottom.each do |c|
            print "#{c.display_card}, "
          end
          puts
        when 'arrange'
          puts "Enter the hand to remove a card from"
        when 'help'
          puts "-----------------------------------------------------------------------"
          puts "arrange <card> <orginal hand> <new hand> - Arrange card into a new hand"
          puts "help - List available commands"
          puts "quit - Quit the game"
          puts "show - Show all cards in hands"
          puts "-----------------------------------------------------------------------"
        else
          puts 'Not a valid command. Type "help" for a list of command options.'
      end
    end
  end
end
