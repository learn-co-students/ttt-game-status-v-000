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
  [2,4,6]
]

def won?(board)

  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination # return the win_combination indexes that won.
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination # return the win_combination indexes that won.
    end
  end
  return false
end

def full?(board)
  board.all? {|spot| spot != " "}
end

def draw?(board)
  full?(board) && !won?(board) # full and not won > true, else false
end

def over?(board) # full or won?
  full?(board) || won?(board)
end

def winner(board)
  # won = won?(board) > can use this instead and have "won" be a variable to make it look cleaner?
    if won?(board)
      return board[won?(board)[0]]
    else
      return nil
  end
end

  # won?(board).all? do |win_value| >> this was me trying other code that didn't work!! The above is much simpler.
  #   if board[win_value] == "X"
  #     return "X"
  #   elsif board[win_value] == "O"
  #     return "O"
  #   else return nil
#     end
#   end
# end
