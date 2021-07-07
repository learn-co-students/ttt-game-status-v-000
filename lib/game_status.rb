# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
def won?(board)
  # !won?(board)
  WIN_COMBINATIONS.detect do |combo| # [0,1,2]
    if position_taken?(board, combo[0]) &&  board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
      combo
    end
  end
end

def full?(board)
  if board.include?(" ")
    return false
  else
    return true
  end
end


def draw?(board)
  if !won?(board) && full?(board)
    return true
  end
end


def over?(board)
  if draw?(board) || won?(board)
    return true
  elsif full?(board) == false
    return false
  end
end

def winner(board)
   winning =  won?(board)
   if winning
     return board[winning[0]]
   end
end

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
