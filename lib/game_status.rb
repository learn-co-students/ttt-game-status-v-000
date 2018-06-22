# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.detect do |winning_combination|
    board[winning_combination[0]] == board[winning_combination[1]] && board[winning_combination[1]] == board[winning_combination[2]] && board[winning_combination[2]] == "X" || board[winning_combination[0]] == board[winning_combination[1]] && board[winning_combination[1]] == board[winning_combination[2]] && board[winning_combination[2]] == "O"
  end
end


def full?(board)
  board.all? {|el| el == "X" || el == "O"}
end

def draw?(board)
  !(won?(board)) && full?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  won?(board) ? board[won?(board)[0]] : nil
end
