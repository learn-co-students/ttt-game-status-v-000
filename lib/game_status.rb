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

def won?(board)
  WIN_COMBINATIONS.find do |win_combination|
    index_1 = win_combination[0]
    index_2 = win_combination[1]
    index_3 = win_combination[2]

    position_1 = board[index_1]
    position_2 = board[index_2]
    position_3 = board[index_3]

    position_1 == position_2 && position_2 == position_3 && position_taken?(board, index_1)
  end
end

def full?(board)
  WIN_COMBINATIONS.all? do |space|
    index_1 = space[0]
    index_2 = space[1]
    index_3 = space[2]

    board[index_1] != " " && board[index_2] != " " && board[index_3] != " "
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == nil
    true
  else
    false
  end
end

def over?(board)
  if won?(board) && full?(board) != true
    true
  elsif full?(board) == true
    true
  else
    false
  end
end

def winner(board) # board is ["X","X",X,X,X,X,O,O]
  # we need to find if its a winner
  # if it's a winner, we have the winning indexes
  # we need to access the element on the board at any one of those index position
  result = won?(board) # [3,4,5]
  if result
    winning_index_position = result[2]
    board[winning_index_position]
  end
end
