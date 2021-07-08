# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
[
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left to right diagonal
  [2,4,6], # Right to left diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    char_at_position_1 = board[win_index_1]
    char_at_position_2 = board[win_index_2]
    char_at_position_3 = board[win_index_3]

    if char_at_position_1 == "X" && char_at_position_2 == "X" && char_at_position_3 == "X"
      puts "The win combination is: #{win_combination}"
      return win_combination
    elsif
      char_at_position_1 == "O" && char_at_position_2 == "O" && char_at_position_3 == "O"
      puts "The win combination is: #{win_combination}"
      return win_combination
    end
  end
  false
end

def full?(board)
  !board.any? {|x| x == " "}
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end
end

def over?(board)
  (won?(board) || full?(board) || draw?(board))
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else
    nil
  end
end
