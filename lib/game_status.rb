# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
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

win_index_1 = WIN_COMBINATIONS[0]
win_index_2 = WIN_COMBINATIONS[1]
win_index_3 = WIN_COMBINATIONS[2]
win_index_4 = WIN_COMBINATIONS[3]
win_index_5 = WIN_COMBINATIONS[4]
win_index_6 = WIN_COMBINATIONS[5]
win_index_7 = WIN_COMBINATIONS[6]
win_index_8 = WIN_COMBINATIONS[7]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[2]] == board[combo[1]] && board[combo[1]] != " "
  end
end

def full?(board)
  board.all? do |spaces|
    spaces != (" ")
  end
end

def draw?(board)
  !(won?(board)) && full?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  winning_combo = won?(board)
    if winning_combo
      board[winning_combo[0]]
    else
      nil
    end
end
