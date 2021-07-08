# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2],
                    [3, 4, 5],
                    [6, 7, 8],
                    [0, 3, 6],
                    [1, 4, 7],
                    [2, 5, 8],
                    [0, 4, 8],
                    [2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? {|e| !(e.nil? || e == " " )}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if over?(board) && draw?(board)
    return nil
  elsif over?(board) && won?(board)
    win_index = WIN_COMBINATIONS.detect do |combo|
                    board[combo[0]] == board[combo[1]] &&
                    board[combo[1]] == board[combo[2]] &&
                    position_taken?(board, combo[0])

                end
    return board[win_index[0]]
  else
    return nil
  end
end
