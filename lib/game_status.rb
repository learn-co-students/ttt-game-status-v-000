# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
def input_to_index(input)
  num = input.to_i
  num = num -1
end

WIN_COMBINATIONS = [
  [0, 1, 2], #top row win
  [3, 4, 5], #Middle row win
  [6, 7, 8], #Bottom row win
  [0, 3, 6], #left column win
  [1, 4, 7], #middle column win
  [2, 5, 8], #right column win
  [0, 4, 8], #left diagonal win
  [2, 4, 6] #right diagonal win
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

      if position_1 == "X" && position_2 == "X" && position_3 == "X"  || position_1 == "O" && position_2 == "O" && position_3 == "O"
          return win_combination
      end #if
      end #each
        return false
end #won

def full?(board)
  if board.include?("") || board.include?(" ")
    return false
  else
    return true
  end
end

def draw?(board)
  if full?(board) && won?(board) || won?(board)
    return false
  else
    return true
  end
end

def over?(board)
  if full?(board) && won?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end
