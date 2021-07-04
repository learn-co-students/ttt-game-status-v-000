def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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

def won?(board)
  WIN_COMBINATIONS.each do |win_indices|
    win_move_1 = board[win_indices[0]]
    win_move_2 = board[win_indices[1]]
    win_move_3 = board[win_indices[2]]
    if [win_move_1, win_move_2, win_move_3].all? {|i| i == "X"} || [win_move_1, win_move_2, win_move_3].all? {|i| i == "O"}
      return win_indices
    end
  end
  false
end

def full?(board)
  board.none? {|i| i == " " || nil}
end

def draw?(board)
  !(won?(board)) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else
    nil
  end
end
