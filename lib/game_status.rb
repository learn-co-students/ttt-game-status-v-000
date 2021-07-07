# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
#WIN_RETURN =
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]
#Create a nested array of win combinations defined in a constant WIN_COMBINATIONS
def won?(board)
any_return = WIN_COMBINATIONS.any? do |combo|
  board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" ||
    board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
end
select_return =  WIN_COMBINATIONS.select do |combo|
    board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" ||
      board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
end
  if any_return == false
    any_return
  elsif select_return != nil
    win_return = select_return[0]
  end
end

def full?(board)
  board.all? do |board_element| board_element == "X" || board_element == "O" end
end

def draw?(board)
  #if
    full?(board) == true && won?(board) == false
  #  true
  #else
  #  false
  #end
end

def over?(board)
  full?(board) == true || won?(board) != false || draw?(board) == true
end

def winner(board)
  if won?(board) != false
  win_line = won?(board)
  board[win_line[0]]
  end
end
