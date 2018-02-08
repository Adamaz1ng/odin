require_relative 'player'
require_relative 'board'

class Game
  attr_accessor :board, :player1, :player2
  def initialize
    @player1 = Player.new("Rick", "O")
    @player2 = Player.new("Morty", "X")
    @board = Board.new(@player1, @player2)
    play
  end

  def play
    @board.display
    until won?(@player1) || won?(@player2)
      @player1.move_maker(@board)
      @board.display
      next if won?(@player1) || won?(@player2)
      @player2.move_maker(@board)
      @board.display
    end
    won?(@player1) ? @player1.win_display : @player2.win_display
  end

  def won?(player)
    if @board.grid[0..2].all? { |el| el.first == player.piece }
      true
    elsif @board.grid[3..5].all? { |el| el.first == player.piece }
      true
    elsif @board.grid[6..8].all? { |el| el.first == player.piece }
      true
    elsif [@board.grid[0], @board.grid[4], @board.grid[8]].all? { |el| el.first == player.piece }
      true
    elsif [@board.grid[2], @board.grid[4], @board.grid[6]].all? { |el| el.first == player.piece }
      true
    else
      false
    end
  end
end
