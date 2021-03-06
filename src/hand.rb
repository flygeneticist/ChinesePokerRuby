class Hand
  attr_accessor :all_cards, :top, :middle, :bottom
  
  def initialize
    @all_cards = []
    @top = []
    @middle = []
    @bottom = []
  end

  def arrange (orig, dest, card)
    #moves one card object from an originating hand to a destination hand
    return nil
  end

  def set
    # checks that all hands meet rules and all cards have been assigned to a sub hand
    if @all_cards = [] && @top.length == 5 && @middle.length == 3 && @bottom.length == 5
      puts "Your hands are now set. Moving to the next phase."
      return true
    else
      puts "Please check your hands setup and try again."
      return false
    end
  end

  def show_all
    puts "Un-assigned:"
    @all_cards.each do |c|
      print "#{c.display_card}, "
    end
    puts
    puts "Top hand:"
    @top.each do |c|
      print "#{c.display_card}, "
    end
    puts
    puts "Middle hand:"
    @middle.each do |c|
      print "#{c.display_card}, "
    end
    puts
    puts "Bottom hand:"
    @bottom.each do |c|
      print "#{c.display_card}, "
    end
    puts
  end
end
