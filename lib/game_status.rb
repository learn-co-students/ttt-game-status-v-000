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
  won = false
  WIN_COMBINATIONS.each do |win_combination|
     position_1 = board[win_combination[0]]
     position_2 = board[win_combination[1]]
     position_3 = board[win_combination[2]]
     if (position_1 == "X" && position_2 == "X"  && position_3 == "X") || (position_1 == "O" && position_2 == "O"  && position_3 == "O")
       return win_combination.to_a
     end
  end
  return false
end

def full?(board)
  board.none? { |element| element ==" " }
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  winner_combination = won?(board)
  if !winner_combination
    return nil
  end
  if board[winner_combination[0]] == "X"
    return "X"
  else
    return "O"
  end
end