class Game
  def initialize
    @player1 = Player.new("Rick", "O")
    @player2 = Player.new("Morty", "X")
    @board = Board.new(@player1, @player2)
  end

  def play
    until won?(@player1) || won?(@player2)
      @player1.move_maker(@board)
      @board.display
      @player2.move_maker(@board)
      @board.display
  end

  def won?(player)
    if @board[0..2].all? { |el| el == player.piece }
      return true
    elsif @board[3..5].all? { |el| el == player.piece }
      return true
    elsif @board[6..8].all? { |el| el == player.piece }
      return true
    elsif [@board[0], @board[4], @board[8]].all? { |el| el == player.piece }
      return true
    elsif [@board[2], @board[4], @board[6]].all? { |el| el == player.piece }
      return true
    else
      return false
    end
  end
end
