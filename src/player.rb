class Player
  attr_accessor :hands, :money, :name
  
  def initialize
    puts "Enter player name: "
    @name = gets.chomp.strip
    puts "Enter starting bankroll: "
    @money = gets.chomp.to_i
    @hands
  end
end
