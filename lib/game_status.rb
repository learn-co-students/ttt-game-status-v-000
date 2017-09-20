# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
    WIN_COMBINATIONS.each do |win_combination|

  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3
if position_1 == "X" && position_2 == "X" && position_3 == "X" ||position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
  end
end
else
  return false
end


def full?(board)
  board.all? do |element|
     element == "X" || element == "O"
    end
  end

def draw?(board)
  # what defines a draw? not won?(board), and the board is full?(board)

  !won?(board) && full?(board)

  #  board.!WIN_COMBINATIONS do |element|
  #    if full?(board)
  #      true
  #
end
   def over?(board)
     won?(board) || draw?(board)
   end

def winner(board)
  # check won?(board)
  # if someone won, won?(board) give us an array example: [0,1,2]
  # method should return "X" or "O" if someone won, nil if no one won (nil is automatically returned if there is no return value)
  if won?(board) # [0,1,2]
    # win_combination = won?(board)
    # win_index_1 = win_combination[0]
    # position_1 = board[win_index_1]
    # position_1
    #use'board' will return "X" or "O"
    board[won?(board)[0]]

  end
end
