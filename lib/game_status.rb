# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #Left diagonal
  [2,4,6]  #Right diagonal
]


def empty_board?
  board.any? {|position| !position == "X" && !position == "O"}
end
#
def won?(board)
WIN_COMBINATIONS.find do |win_combination| # [0, 1, 2]
  win_index_1 = win_combination[0] # 0
  win_index_2 = win_combination[1] # 1
  win_index_3 = win_combination[2] # 2

  position_1 = board[win_index_1] # "X"
  position_2 = board[win_index_2] # "X"
  position_3 = board[win_index_3] # "X"

  if position_1 == position_2 && position_2==position_3 && position_1!=" "
    return win_combination
  end
end
   false
end

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end

def winner(board)
  if win_combination = won?(board)
    board[win_combination.first]
  end
end
