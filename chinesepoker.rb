require './src/table'

def get_command

end

puts "Chinese Poker!"
game = Table.new
game.new_game

play = true
while (play)
  game.new_round
  p = game.players[0]
  turn = true
  while (turn)
    puts "What do you want to do?"
    input = gets.chomp.strip.downcase
    case input
      when 'quit' # quit the game
        play = false
        turn = false
      when 'show'
        p.hands.show_all
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