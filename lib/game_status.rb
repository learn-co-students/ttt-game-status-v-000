# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]
  
# won? Method - My 1st attempt.  Unble to get it to work
#  def won?(board)
#    WIN_COMBINATIONS.each do |winning_combo|
#      if winning_combo.all? {|winning_combo_indexes| board[winning_combo_indexes] == "X"}
#        return match_array([winning_combo]).to_a
#        elsif winning_combo.all? {|winning_combo_indexes| board[winning_combo_indexes] == "O"}
#        return match_array([winning_combo]).to_a
#        elsif winning_combo.all? {|winning_combo_indexes| board[winning_combo_indexes] == " "}
#        return nil
#      else
#         board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
#         return nil
#      end
#    end
#    end
  

# won? method 2nd attempt trying to use the helper method
def won?(board)
  WIN_COMBINATIONS.find do |winning_combo|
    board[winning_combo[0]] == board[winning_combo[1]] &&
    board[winning_combo[1]] == board[winning_combo[2]] &&
    position_taken?(board, winning_combo[0])
  end
end

# full? method
def full?(board)
  board.all? do |board_space|
    board_space == "X" || board_space == "O"
  end
end  
    
# draw? method
def draw?(board)
  full?(board) && !won?(board)
end

# over? method
def over?(board)
  full?(board) || won?(board)
end

# winner method
def winner(board)
  if the_winner = won?(board)
    board[the_winner.first]
  else
    return nil
  end
end
