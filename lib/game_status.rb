# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [ [0, 1, 2],
[3, 4, 5],
[6, 7, 8],
[0, 3, 6],
[1, 4, 7],
[2, 5, 8],
[0, 4, 8],
[2, 4, 6]
]

def won?(board)
   WIN_COMBINATIONS.each do |win_combination|
    win_index_0 = win_combination[0]
    win_index_1 = win_combination[1]
    win_index_2 = win_combination[2]
    win_index_3 = win_combination[3]
    win_index_4 = win_combination[4]
    win_index_5 = win_combination[5]
    win_index_6 = win_combination[6]
    win_index_7 = win_combination[7]

    if board[win_index_0] == "X" && board[win_index_1] == "X" && board[win_index_2] == "X"
      return win_combination
    elsif board[win_index_0] == "O" && board[win_index_1] == "O" && board[win_index_2] == "O"
      return win_combination
        elsif board.all? { |i| i == " " }
      return false

        else
      next
    end
  end
  false
end

def full?(board)
  board.each do |x|
     if x == ' '
       return false
     end
  end
  true
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else won?(board) && !full?(board)
    false
  end
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
 win = won?(board)
  if win
    board[win[0]]
 else
   nil
 end

end
