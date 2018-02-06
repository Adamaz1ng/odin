class Board
  attr_accessor :board
  def initialize(player1, player2)
    @board = Array.new(9) { [] }
    @player1 = player1
    @player2 = player2
  end

  def display
    system 'clear'
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts "------------"
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "------------"
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  def valid_move?(choice)
    return true if @board[choice - 1] == []
  end
  false
end
