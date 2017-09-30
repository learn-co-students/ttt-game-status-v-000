# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row win
  [3,4,5], # Middle row win
  [6,7,8], #Bottom row win
  [0,3,6], #Left vertical win
  [1,4,7], #Middle vertical win
  [2,5,8], #Right vertical win
  [0,4,8], #Diagnal win
  [2,4,6] #Diagnal win
 ]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|

  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
     return win_combination
  else
    false
  end
  end
end

def full?(board)
  board.all?{|position| position != " " }
end

def draw?(board)
  full?(board) && !won?(board) ? true : false
end

def over?(board)
  won?(board) || full?(board) ? true : false
end

def winner(board)
  win_token = won?(board)
  won?(board) ? board[win_token[0]] : nil
end
