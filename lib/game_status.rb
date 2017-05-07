# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
WIN_COMBINATIONS.each do |win_combination|
win_index_1 = win_combination[0]
win_index_2 = win_combination[1]
win_index_3 = win_combination[2]

position_1 = board[win_index_1]
position_2 = board[win_index_2]
position_3 = board[win_index_3]

  if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
return win_combination
      end
    end
  false
end

def full?(board)
# if EVERY element on the baord contains either x or o, return true
#else return false for in progress game.
  if board.include?(" ")
    false
  else
    true
  end
end


def draw?(board)
  #check if board has not been won and is full rturns true

  #use the won method to check for winning combinations
  #
  if full?(board) && !won?(board)
    true
  else
    false
  end
end

def over?(board)
  #if the baord has been won, is a draw, or is full, return true
  if won?(board) || full?(board)
    true
  else
    false
  end
end


def winner(board)
  #return the token x or o that won the game winning board
  #by using the win method, we get the winning combination
  #winning combination gives you the position of the token...
  #return the position from the board
  #need to see position on the board
  if winning = won?(board)
    position = winning[0]
    return board[position]
  else
    nil
  end
end
