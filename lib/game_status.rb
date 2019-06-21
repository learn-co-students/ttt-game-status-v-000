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
  [2,5,8],
  [1,4,7]
  ]
 
  
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if position_1 == position_2 && position_2 == position_3 && position_taken?(board,win_index_1) == TRUE
      return win_combination
    else
      false
    end
    #[position_1,position_2,position_3].all? {|position| position == "X"}
    #[position_1,position_2,position_3].all? {|position| position == "O"}
  end
  return false
end



def full?(board)
  board.all? do |slot| 
    slot == "X" or slot == "O"
  end
end


def draw?(board)
  if full?(board) == TRUE && won?(board) == FALSE
    return TRUE
  else
    return FALSE
  end
end

def over?(board)
  if draw?(board) == TRUE || full?(board) == TRUE || won?(board) != FALSE
    return TRUE
  else
    return FALSE
  end
end


def winner(board)
  if over?(board) == TRUE
    win_combination = won?(board)
    winning_position_1 = win_combination[0]
    winning_mark = board[winning_position_1]
  end
end
  
