require_relative 'board'

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
    if board.valid_move?(choice)
      board.grid[choice - 1] << self.piece
    else
      puts "This location is already occupied."
      move_maker(board)
    end
  end

  def win_display
    puts "#{self.name} has won the game!"
  end
end
