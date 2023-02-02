class TowerOfHanoi
  def initialize
    @board = Array.new(3) { Array.new([]) }
    populate
  end

  def populate
    @board[0] << [3, 2, 1]
    @board
  end

  #   def play
  #     until won?
  #     end
  #   end

  def won?
    @board[1] == [3, 2, 1] || @board[2] == [3, 2, 1]
  end
end
