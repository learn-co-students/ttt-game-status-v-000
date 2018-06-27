def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combos|
       board[win_combos[0]] == board[win_combos[1]] && board[win_combos[1]] == board[win_combos[2]] && position_taken?(board, win_combos[0])
end
  end



 def full?(board)
WIN_COMBINATIONS.each do |elements|
    if position_taken?(board, elements[0]) != true
      return false
end
end
end

 def draw?(board)
   !won?(board) && full?(board)

end


def over?(board)
  if won?(board)  || draw?(board)||full?(board)
    return true
end
end

def winner(board)
token = won?(board)
if token
  return board[token[0]]
end
end
