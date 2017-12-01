# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top_row_win
  [3,4,5], #middle_row_win
  [6,7,8], #bottom_row_win
  [0,3,6], #first_column_win
  [1,4,7], #second_column_win
  [2,5,8], #last_column_win
  [0,4,8], #down_diagonal_win
  [2,4,6] #up_diagonal_win
]

def won?(board)
  winning = false
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]  #assigning variables to use the wininng index variable later
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]  #evaluates the value of board at board[1] for example. could be X or O or nil
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      winning = win_combination
    end
  end
return winning
end

def full?(board)
  board.all? {|value| value == "X" || value == "O"}
end

def draw?(board)
  draw = false
  if (won?(board) == false)
    if (full?(board) == true)
      draw = true
    end
  end
end

def over?(board)
  over = false
  if (full?(board) == true || draw?(board) == true || won?(board) == true)
    over = true
  end
end

def winner(board)
  if won?(board) != false
    win_combination = won?(board)
    return board[win_combination[0]]
    end
end
