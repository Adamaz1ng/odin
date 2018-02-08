class Board
  attr_accessor :grid
  def initialize(player1, player2)
    @grid = Array.new(9) { [] }
    @player1 = player1
    @player2 = player2
  end

  def display
    system 'clear'
    puts "#{@grid[0]} | #{@grid[1]} | #{@grid[2]}"
    puts "------------"
    puts "#{@grid[3]} | #{@grid[4]} | #{@grid[5]}"
    puts "------------"
    puts "#{@grid[6]} | #{@grid[7]} | #{@grid[8]}"
  end

  def valid_move?(choice)
    return true if @grid[choice - 1] == []
    false
  end
end
