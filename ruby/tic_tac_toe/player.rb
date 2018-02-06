require 'board'

class Player
  attr_reader :name, :piece
  def initialize(name, piece)
    @name = name
    @piece = piece
  end

  def move_maker(board)
    puts "#{self.name}, choose a position: 1 - 9"
    print "> "
    choice = gets.chomp.to_i
    board[choice - 1] << self.piece if board.valid_move?(choice)
  end

  def win_display
    puts "#{self.name} has won the game!"
  end
end
